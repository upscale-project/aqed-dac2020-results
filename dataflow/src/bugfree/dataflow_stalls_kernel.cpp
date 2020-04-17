#include <float.h>
#include <math.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <ap_int.h>
#include <hls_stream.h>

typedef uint64_t Data;

// Sets the FIFO depth at data_stage3 to 5 to prevent deadlock
#define SET_FIFO_DEPTHS 

#ifdef FLUSH_PIPELINE
const bool kNoTestEmpty = false;
#else
const bool kNoTestEmpty = true;
#endif

/******************************************************
 *                                                    *
 *                     compute1                       *
 *                    /        \                      *
 *   load -> scatter +          + gather -> store     *
 *                    \        /                      *
 *                     compute2                       *
 *                                                    *
 ******************************************************/

void scatter(hls::stream<Data> *to0, hls::stream<Data> *to1,
             hls::stream<Data> *from, uint32_t data_count) {
scatter_epoch:
  for (uint32_t i = 0; i < data_count; ++i) {
#pragma HLS pipeline
    Data tmp = from->read();
    to0->write(tmp);
    to1->write(tmp);
  }
}

void load(hls::stream<Data>* to, Data* from, uint32_t data_count) {
load_epoch:
  for (uint32_t i = 0; i < data_count; ++i) {
#pragma HLS pipeline
    to->write(from[i]);
  }
}

void store(Data* to, hls::stream<Data>* from, uint32_t data_count) {
store_epoch:
  for (uint32_t i = 0; i < data_count; ++i) {
#pragma HLS pipeline
    to[i] = from->read();
  }
}

void compute1(hls::stream<Data>* to, hls::stream<Data>* from,
              uint32_t data_count) {
compute1_epoch:
  for (uint32_t i = 0; i < data_count;) {
#pragma HLS pipeline
    if (kNoTestEmpty or not from->empty()) {
      Data tmp = from->read();
      to->write(tmp + tmp);
      ++i;
    }
  }
}

void compute2(hls::stream<Data>* to, hls::stream<Data>* from,
              uint32_t data_count) {
compute2_epoch:
  for (uint32_t i = 0; i < data_count;) {
#pragma HLS pipeline
    if (kNoTestEmpty or not from->empty()) {
      Data tmp = from->read();
      to->write(tmp * tmp);
      ++i;
    }
  }
}

void gather(hls::stream<Data>* to, hls::stream<Data>* from0,
            hls::stream<Data>* from1, uint32_t data_count) {
gather_epoch:
  for (uint32_t i = 0; i < data_count;) {
#pragma HLS pipeline
    if (kNoTestEmpty or not (from0->empty() or from1->empty())) {
      to->write(from0->read() - from1->read());
      ++i;
    }
  }
}

extern "C" {

void dataflow_stalls_kernel(Data* output_ddr0, Data* input_ddr0,
                            uint32_t data_count) {
#pragma HLS interface m_axi port=output_ddr0 offset=slave depth=65536 bundle=gmemo
#pragma HLS interface m_axi port=input_ddr0 offset=slave depth=65536 bundle=gmemi

#pragma HLS interface s_axilite port=output_ddr0 bundle=control
#pragma HLS interface s_axilite port=input_ddr0 bundle=control
#pragma HLS interface s_axilite port=data_count bundle=control
#pragma HLS interface s_axilite port=return bundle=control

  hls::stream<Data> data_stage0("data_stage0");
  hls::stream<Data> data_stage1("data_stage1");
  hls::stream<Data> data_stage2("data_stage2");
  hls::stream<Data> data_stage3("data_stage3");
  hls::stream<Data> data_stage4("data_stage4");
  hls::stream<Data> data_stage5("data_stage5");
// These are used as burst I/O buffers.
#pragma HLS stream variable=data_stage0 depth=32
#pragma HLS stream variable=data_stage5 depth=32

#ifdef SET_FIFO_DEPTHS
#pragma HLS stream variable=data_stage3 depth=5
#endif

#pragma HLS dataflow
  load(&data_stage0, input_ddr0, data_count);
  scatter(&data_stage1, &data_stage2, &data_stage0, data_count);
  compute1(&data_stage3, &data_stage1, data_count);
  compute2(&data_stage4, &data_stage2, data_count);
  gather(&data_stage5, &data_stage3, &data_stage4, data_count);
  store(output_ddr0, &data_stage5, data_count);
}

}//extern "C"
