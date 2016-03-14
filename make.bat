@echo off
set LSHORT=lshort-zh-cn
set SOURCE=src
set PDF=%LSHORT%.pdf

set EXAMPLE=lshort-example.tex
set ENGINE=xelatex
set MAKEINDEX=makeindex

if exist %PDF% (del %PDF%)
cd %SOURCE%
%ENGINE% %LSHORT%
%MAKEINDEX% %LSHORT%
%ENGINE% %LSHORT%
if exist %EXAMPLE% (del %EXAMPLE%)

if exist %PDF% (move %PDF% ..)
cd ..
