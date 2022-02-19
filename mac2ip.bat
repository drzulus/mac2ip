@echo off
if "%1" == "" echo no MAC address & exit /b 1
for /L %%a in (1,1,254) do @start /b ping 192.168.31.%%a -n 2 > nul
ping 127.0.0.1 -n 3 > nul
arp -a | find /i "%1"
