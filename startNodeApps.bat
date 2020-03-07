@echo off

set count=1

if not "%1" == "" (
  set count=%1
)

rem docker rm -f $(docker ps -a -q --filter="name=yyang-node-app")

set /a number=10000+%count%

for /l %%x in (10000, 1, %number%) do (
  docker rm -f yyang-node-app-%%x > nul 2>&1 
  start /B docker run -p %%x:9000 --name yyang-node-app-%%x yyang/node-app > nul 2>&1
)

exit 0
