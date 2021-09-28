@echo off

rmdir /Q /S build\html\ja

set SPHINXOPTS=-D language=ja
call make.bat html

mkdir build\html\ja

robocopy "build\html" "build\html\ja" /E /MOVE /XD en ja
