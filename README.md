# fileSystemAnalysis
detailed analysis and benchmarks of different file systems

### Inital findings
- copying project to usb flash
- 36k files, most small js files, some large jars

- fat16 >10 min

- f2fs 
0.04user 0.81system 0:00.86elapsed 98%CPU (0avgtext+0avgdata 2940maxresident)k
0inputs+1696712outputs (0major+193minor)pagefaults 0swaps

- btrfs 
0.09user 1.81system 1:18.09elapsed 2%CPU (0avgtext+0avgdata 2944maxresident)k
0inputs+1439256outputs (0major+193minor)pagefaults 0swaps


