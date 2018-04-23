#!/bin/bash
echo "\"cpu_threads_conf\" : [ " > cpu.txt
cpu_cnt=$(lscpu | grep Core | awk '{print $4}')
for ((n=0;n<$cpu_cnt;n++)); do echo "{ \"low_power_mode\" : false, \"no_prefetch\" : true, \"affine_to_cpu\" : $n }," >> cpu.txt ; done
echo "]," >> cpu.txt
