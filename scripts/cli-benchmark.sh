#!/bin/bash

echo "Initial run..."
fio --name=benchmark --rw=read --direct=1 --ioengine=libaio --bs=8k --numjobs=1 --size=1G --runtime=60  --group_reporting > out.txt

rm out.txt

echo "Sequential reads:"
echo ""
fio --name=benchmark --rw=read --direct=1 --ioengine=libaio --bs=64k --numjobs=1 --size=1G --runtime=300  --group_reporting --time_based


echo ""
echo "Sequential writes:"
echo ""
fio --name=benchmark --rw=write --direct=1 --ioengine=libaio --bs=64k --numjobs=1 --size=1G --runtime=300 --group_reporting --time_based


echo ""
echo "Random reads:"
echo ""
fio --name=benchmark --rw=randread --direct=1 --ioengine=libaio --bs=64k --numjobs=1 --size=1G --runtime=300 --group_reporting --time_based


echo ""
echo "Random writes:"
echo ""
fio --name=benchmark --rw=randwrite --direct=1 --ioengine=libaio --bs=64k --numjobs=1 --size=1G --runtime=300 --group_reporting --time_based