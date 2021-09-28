@echo off

rmdir /Q /S build\html\en

set SPHINXOPTS=-D language=en
call make.bat html

mkdir build\html\en

robocopy "build\html" "build\html\en" /E /MOVE /XD en ja
