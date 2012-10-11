#32bit version
#gcc -m32 -fPIC -shared -o libtest.so test.c

#64bit version
gcc  -fPIC -shared -o libtest.so test.c
vlog test.sv
echo "run -all;quit -f" | vsim -c -sv_lib libtest tb_dpi 

