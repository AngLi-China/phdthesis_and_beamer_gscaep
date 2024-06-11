@echo off
if "%~1" == "clean" (
  rmdir /S/Q temp >nul 2>nul
  cd fig/tikz
  mingw32-make clean -f makefile-win
) else if "%~1" == "xelatex" (
  xelatex main --aux-directory=./temp -synctex=1 -halt-on-error -file-line-error
) else if "%~1" == "latexmk-xe" (
  cd fig/tikz
  mingw32-make -f makefile-win
  cd ../..
  latexmk main --aux-directory=./temp -xelatex -synctex=1 -halt-on-error -file-line-error
)