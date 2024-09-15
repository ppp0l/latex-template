@echo off
setlocal

set Arr[0]=out
set Arr[1]=log
set Arr[2]=aux
set Arr[3]=toc
set Arr[4]=blg
set Arr[5]=idx
set Arr[6]=synctex.gz
set Arr[7]=pdf

set "x=0"

:SymLoop
if defined Arr[%x%] (
	call echo Deleting %%Arr[%x%]%% files
    call del *.%%Arr[%x%]%%
    set /a "x+=1"
    GOTO :SymLoop
)