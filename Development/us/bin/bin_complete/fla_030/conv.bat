@echo off
set PATH=%PATH%;C:\PSP_Project\Hs\tool\bin\CollisionConvert;C:\PSP_Project\Hs\tool\bin\gimconv;C:\PSP_Project\Hs\tool\bin\gmoconv;C:\PSP_Project\Hs\tool\bin\FlashConverter;C:\PSP_Project\Hs\tool\bin\FilePack

GimConv -error -F break_tx_000.png

FlashConverter break_tx.swf -el -a
FilePack -L break_pak.lst -A 16 -O fla_030.pak

move *.pak ..\

del *.gim
del *.sfl
