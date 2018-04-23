#!/bin/bash
echo "\"cpu_threads_conf\" : [ " > cpu.txt
cpu_cnt=$(lscpu | grep Core | awk '{print $4}')
socket_cnt=$(lscpu | grep Socket | grep -v grep | awk '{print $2}')
for ((n=0;n<$cpu_cnt*$socket_cnt - 1;n++)); do echo "{ \"low_power_mode\" : false, \"no_prefetch\" : true, \"affine_to_cpu\" : $n }," >> cpu.txt ; done
echo "]," >> cpu.txt
