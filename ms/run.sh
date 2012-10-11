gcc -m32 -fPIC -shared -o libtest.so test.c
vlog test.sv
vsim -c -sv_lib libtest tb_dpi -do "run -all;quit -f"

