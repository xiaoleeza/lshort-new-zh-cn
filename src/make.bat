@echo off
set LSHORT=lshort-zh-cn
set PDF=%LSHORT%.pdf
set EXAMPLE=lshort-example.tex

set MODE=-interaction=nonstopmode
set ENGINE=xelatex
set MAKEINDEX=makeindex

if exist %PDF% (del %PDF%)
%ENGINE% %MODE% %LSHORT%
%MAKEINDEX% %LSHORT%
%ENGINE% %MODE% %LSHORT%
if exist %EXAMPLE% (del %EXAMPLE%)

if exist %PDF% (
move %PDF% ..
start "" "..\%PDF%"
)