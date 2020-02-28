#!/bin/bash

set -e

echo "Starting benchmark with fio on /dev/sdd1 ..."

fio --name=guestrun --filename=/dev/sdd1 \
 --rw=randwrite --bs=16k --ioengine=libaio --direct=1 \
 --norandommap --runtime=120 --time_based --numjobs=1 \
 --group_reporting --thread --size=25g --write_lat_log \
 --write_bw_log --iodepth=74

echo "Done."
