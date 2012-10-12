#32bit version
#gcc -m32 -fPIC -shared -o libtest.so test.c

#64bit version
#gcc  -fPIC -shared -o libtest.so test.c
vlib work
vlog test.sv
vlog test.c
echo "run -all;quit -f" | vsim -c tb_dpi 

