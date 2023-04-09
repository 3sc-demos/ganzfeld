tools\bzpack.exe build\page0.bin build\page0.pck -ue2 -r -o -e
tools\bzpack.exe build\page1.bin build\page1.pck -ue2 -r -o -e
tools\bzpack.exe build\page2.bin build\page2.pck -ue2 -r -o -e
tools\bzpack.exe build\page3.bin build\page3.pck -ue2 -r -o -e
tools\bzpack.exe build\page4.bin build\page4.pck -ue2 -r -o -e
tools\bzpack.exe build\page5.bin build\page5.pck -ue2 -r -o -e
tools\bzpack.exe build\page6.bin build\page6.pck -ue2 -r -o -e
tools\bzpack.exe build\page7.bin build\page7.pck -ue2 -r -o -e

call tools\pageSizes.bat >build\PageSizes.inc

tools\pasmo.exe --alocal --bin --public loader\loader.asm build\loader.bin
tools\pasmo.exe --alocal --bin --public loader\setup.asm build\setup.bin build\setup.sym
tools\pasmo.exe --alocal --bin --public loader\disclaimer.asm build\disclaimer.bin

tools\bzpack.exe build\setup.bin build\setup.pck -ue2 -r -o -e

call tools\setupSize.bat >build\SetupSize.inc

tools\pasmo.exe --tap --name ganzfeld.0 loader\PackedSetup.asm tap\ganzfeld0.tap
tools\pasmo.exe --tap --name ganzfeld.1 loader\PackedData1.asm tap\ganzfeld1.tap
tools\pasmo.exe --tap --name ganzfeld.2 loader\PackedData2.asm tap\ganzfeld2.tap

copy /b tap\basic.tap + tap\ganzfeld0.tap + tap\ganzfeld1.tap + tap\ganzfeld2.tap tap\ganzfeld.tap
copy /b tap\disclaimer.tap + tap\basic.tap + tap\ganzfeld0.tap + tap\ganzfeld1.tap + tap\ganzfeld2.tap tap\ganzfeld-party.tap
