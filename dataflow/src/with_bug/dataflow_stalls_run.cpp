#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>

#include"dataflow_stalls.h"

int main(int argc, char **argv)
{
    if(argc != 3)
    {
        fprintf(stderr, "Usage: \n    %s <xclbin> <data count>\n", argv[0]);
        return 1;
    }

    dataflow_stalls((strtoull(argv[2], nullptr, 10)), argv[1]);

    return 0;
}
