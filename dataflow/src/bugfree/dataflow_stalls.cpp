#include <cassert>
#include <cfloat>
#include <cmath>
#include <cstdbool>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iostream>

#include <fcntl.h>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <CL/opencl.h>

typedef uint64_t Data;

using std::cout;
using std::endl;

#if defined(SDX_PLATFORM) && !defined(TARGET_DEVICE)
  #define STR_VALUE(arg)    #arg
  #define GET_STRING(name) STR_VALUE(name)
  #define TARGET_DEVICE GET_STRING(SDX_PLATFORM)
#endif

int load_xclbin2_to_memory(const char *filename, char **result, char** device)
{ 
  size_t size = 0;
  FILE *f = fopen(filename, "rb");
  if (NULL == f)
  {
    *result = NULL;
    return -1;
  }
  char magic[8];
  fread(magic, 8, 1, f);
  if(strcmp(magic, "xclbin2")!=0)
  {
    *result = nullptr;
    printf("ERROR: not a valid xclbin2 file.\n");
    return -2;
  }
  fseek(f, 0, SEEK_END);
  size = ftell(f);
  fseek(f, 0, SEEK_SET);
  *result = (char *)malloc(size+1);
  *device = (*result)+8+32+256+8+6*8;
  if (size != fread(*result, sizeof(char), size, f))
  {
    free(*result);
    return -2;
  } 
  fclose(f);
  (*result)[size] = 0;
  return size;
}

int dataflow_stalls(uint32_t data_count, const char* xclbin)
{
  Data* var_input_buf = new Data[data_count];
  Data* var_output_buf = new Data[data_count];

  srand(time(nullptr));

  for(int* p = (int*)var_input_buf; p<(int*)(var_input_buf+data_count); ++p) {
    *p = rand();
  }

  // prepare for opencl
  int err;              // error code returned from api calls

  cl_platform_id platforms[16];     // platform id
  cl_platform_id platform_id;     // platform id
  cl_uint platform_count;
  cl_device_id device_id;       // compute device id 
  cl_context context;         // compute context
  cl_command_queue commands;      // compute command queue
  cl_program program;         // compute program
  cl_kernel kernel;           // compute kernel
   
  char cl_platform_vendor[1001];
   
  cl_mem var_input_cl_ddr0;
  cl_mem var_output_cl_ddr0;

  unsigned char *kernelbinary;
  const char *device_name = TARGET_DEVICE;
  char target_device_name[64];
  printf("INFO: Loading %s\n", xclbin);
  int n_i = load_xclbin2_to_memory(xclbin, (char **) &kernelbinary, (char**)&device_name);
  if (n_i < 0) {
    printf("FATAL: Failed to load kernel from xclbin: %s\n", xclbin);
    exit(EXIT_FAILURE);
  }

  for(int i = 0; i<64; ++i)
  {
    if(device_name[i]==':' || device_name[i]=='.')
    {
      target_device_name[i] = '_';
    }
    else
    {
      target_device_name[i] = device_name[i];
    }
  }

  err = clGetPlatformIDs(16, platforms, &platform_count);
  if (err != CL_SUCCESS)
    {
      printf("FATAL: Failed to find an OpenCL platform\n");
      exit(EXIT_FAILURE);
    }
  printf("INFO: Found %d platforms\n", platform_count);

  int platform_found = 0;
  for (unsigned iplat = 0; iplat<platform_count; iplat++) {
    err = clGetPlatformInfo(platforms[iplat], CL_PLATFORM_VENDOR, 1000, (void *)cl_platform_vendor,NULL);
    if (err != CL_SUCCESS) {
      printf("FATAL: clGetPlatformInfo(CL_PLATFORM_VENDOR) failed\n");
      exit(EXIT_FAILURE);
    }
    if (strcmp(cl_platform_vendor, "Xilinx") == 0) {
      printf("INFO: Selected platform %d from %s\n", iplat, cl_platform_vendor);
      platform_id = platforms[iplat];
      platform_found = 1;
    }
  }
  if (!platform_found) {
    printf("FATAL: Platform Xilinx not found\n");
    exit(EXIT_FAILURE);
  }
  
  cl_device_id devices[16];
  cl_uint device_count;
  unsigned int device_found = 0;
  char cl_device_name[1001];
  err = clGetDeviceIDs(platform_id, CL_DEVICE_TYPE_ACCELERATOR,
             16, devices, &device_count);
  if (err != CL_SUCCESS) {
    printf("FATAL: Failed to create a device group\n");
    exit(EXIT_FAILURE);
  }

  for (unsigned int i=0; i<device_count; i++) {
    err = clGetDeviceInfo(devices[i], CL_DEVICE_NAME, 1024, cl_device_name, 0);
    if (err != CL_SUCCESS) {
      printf("FATAL: Failed to get device name for device %d\n", i);
      exit(EXIT_FAILURE);
    }
    //printf("CL_DEVICE_NAME %s\n", cl_device_name);
    if(strcmp(cl_device_name, target_device_name) == 0 || strcmp(cl_device_name, device_name) == 0) {
      device_id = devices[i];
      device_found = 1;
      printf("INFO: Selected %s as the target device\n", device_name);
    }
  }
  
  if (!device_found) {
    printf("FATAL: Target device %s not found\n", target_device_name);
    exit(EXIT_FAILURE);
  }


  err = clGetDeviceIDs(platform_id, CL_DEVICE_TYPE_ACCELERATOR,
             1, &device_id, NULL);
  if (err != CL_SUCCESS) {
    printf("FATAL: Failed to create a device group\n");
    exit(EXIT_FAILURE);
  }
  
  context = clCreateContext(0, 1, &device_id, NULL, NULL, &err);
  if (!context) {
    printf("FATAL: Failed to create a compute context\n");
    exit(EXIT_FAILURE);
  }

  commands = clCreateCommandQueue(context, device_id, 0, &err);
  if (!commands) {
    printf("FATAL: Failed to create a command commands %i\n",err);
    exit(EXIT_FAILURE);
  }

  int status;

  size_t n = n_i;
  program = clCreateProgramWithBinary(context, 1, &device_id, &n,
                     (const unsigned char **) &kernelbinary, &status, &err);
  if ((!program) || (err!=CL_SUCCESS)) {
    printf("FATAL: Failed to create compute program from binary %d\n", err);
    exit(EXIT_FAILURE);
  }
  free(kernelbinary);

  err = clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
  if (err != CL_SUCCESS) {
    size_t len;
    char buffer[2048];
    printf("FATAL: Failed to build program executable\n");
    clGetProgramBuildInfo(program, device_id, CL_PROGRAM_BUILD_LOG, sizeof(buffer), buffer, &len);
    printf("%s\n", buffer);
    exit(EXIT_FAILURE);
  }

  kernel = clCreateKernel(program, "dataflow_stalls_kernel", &err);
  if (!kernel || err != CL_SUCCESS) {
    printf("FATAL: Failed to create compute kernel %d\n", err);
    exit(EXIT_FAILURE);
  }

  var_input_cl_ddr0 = clCreateBuffer(context,  CL_MEM_READ_ONLY, sizeof(Data) * (data_count), NULL, NULL);
  var_output_cl_ddr0 = clCreateBuffer(context, CL_MEM_WRITE_ONLY, sizeof(Data) * (data_count), NULL, NULL);
  if (!var_input_cl_ddr0 || !var_output_cl_ddr0)
  {
    printf("FATAL: Failed to allocate device memory\n");
    exit(EXIT_FAILURE);
  }

  cl_event write_event;
  err  = clEnqueueWriteBuffer(commands, var_input_cl_ddr0, CL_TRUE, 0, sizeof(Data) * (data_count), var_input_buf, 0, NULL, &write_event);
  if(err != CL_SUCCESS) {
    printf("FATAL: Failed to write to input !\n");
    exit(EXIT_FAILURE);
  }
  clWaitForEvents(1, &write_event);

  err = 0;

  int kernel_args = 0;
  err |= clSetKernelArg(kernel, kernel_args++, sizeof(cl_mem), &var_output_cl_ddr0);
  err |= clSetKernelArg(kernel, kernel_args++, sizeof(cl_mem), &var_input_cl_ddr0);
  err |= clSetKernelArg(kernel, kernel_args++, sizeof(data_count), &data_count);
  if (err != CL_SUCCESS)
  {
    printf("FATAL: Failed to set kernel arguments\n");
    printf("ERROR code: %d\n", err);
    exit(EXIT_FAILURE);
  }

  cl_event execute;
  err = clEnqueueTask(commands, kernel, 0, NULL, &execute);
  if(err) {
    printf("ERROR: Failed to execute kernel %d\n", err);
    exit(EXIT_FAILURE);
  }
  clWaitForEvents(1, &execute);

  cl_event read_event;
  err  = clEnqueueReadBuffer(commands, var_output_cl_ddr0, CL_TRUE, 0, sizeof(Data) * (data_count), var_output_buf, 0, NULL, &read_event);
  if (err != CL_SUCCESS)
  {
    printf("ERROR: Failed to read output %d\n", err);
    exit(EXIT_FAILURE);
  }
  clWaitForEvents(1, &read_event);

  int failed = 0;
  for(uint32_t i = 0; i < data_count; ++i)
  {
    Data in = var_input_buf[i];
    Data out = (in + in) - (in * in);
    if(var_output_buf[i] != out)
    {
      cout << "Fail result check! " << var_output_buf[i] << " != " << out << endl;
      ++failed;
    }
  }
  if(failed==0)
  {
    printf("Pass result check.\n");
  }

  clReleaseMemObject(var_input_cl_ddr0);
  clReleaseMemObject(var_output_cl_ddr0);
  clReleaseKernel(kernel);
  clReleaseProgram(program);
  clReleaseCommandQueue(commands);
  clReleaseContext(context);

  delete[] var_output_buf;
  delete[] var_input_buf;
  return 0;
}


