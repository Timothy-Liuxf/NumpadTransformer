@echo off
SETLOCAL
set returnval=0

mkdir "Numpad Transformer Product"

copy /Y Release\NumpadTransformer.exe "Numpad Transformer Product\NumpadTransformer.exe" || set returnval=1 && echo Fail to release NumpadTransformer.exe!

if %returnval% EQU 0 (
    echo Successfully release!
)

pause

EXIT /B %returnval%
