@echo off
set LSHORT=lshort-zh-cn
set PDF=%LSHORT%.pdf
set EXAMPLE=lshort-example.tex

set MODE=-interaction=nonstopmode
set TEX=xelatex
set MAKEINDEX=makeindex

if exist %PDF% (del %PDF%)
%TEX% %MODE% %LSHORT%
%MAKEINDEX% -s %LSHORT%.ist %LSHORT%
%TEX% %MODE% %LSHORT%
if exist %EXAMPLE% (del %EXAMPLE%)

if exist %PDF% (
move %PDF% ..
start "" "..\%PDF%"
)