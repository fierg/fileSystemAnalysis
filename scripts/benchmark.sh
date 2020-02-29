#!/bin/bash

set -e

echo "Starting benchmark with fio on /dev/sdd1 ..."

echo "Starting with sequential write and read."

fio fio-seq-RW.fio |& tee sequential-result.txt

echo "Starting with random write and read."

fio fio-rand-RW.fio |& tee random-result.txt

echo "Done."
