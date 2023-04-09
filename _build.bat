@echo Compiling memory pages...

tools\pasmo.exe --alocal --bin --public page0/page0.asm build/page0.bin build/page0.sym
tools\pasmo.exe --alocal --bin --public page1/page1.asm build/page1.bin build/page1.sym
tools\pasmo.exe --alocal --bin --public page3/page3.asm build/page3.bin build/page3.sym
tools\pasmo.exe --alocal --bin --public page4/page4.asm build/page4.bin build/page4.sym
tools\pasmo.exe --alocal --bin --public page5/page5.asm build/page5.bin build/page5.sym
tools\pasmo.exe --alocal --bin --public page6/page6.asm build/page6.bin build/page6.sym
tools\pasmo.exe --alocal --bin --public page7/page7.asm build/page7.bin build/page7.sym

@echo Compiling main program...

tools\pasmo.exe --alocal --bin page2/page2.asm build/page2.bin
