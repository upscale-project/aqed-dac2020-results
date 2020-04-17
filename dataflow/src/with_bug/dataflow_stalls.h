#ifndef HW_H_
#define HW_H_
#include<stdint.h>

#define BW_TEST_READ 1
#define BW_TEST_WRITE 2
#define BW_CHECK_RESULT (1|2|4)
#define BW_SEPARATE_RW 8

int dataflow_stalls(uint32_t data_size, const char* xclbin);

#endif//HW_H_

