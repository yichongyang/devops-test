@echo off

set count=1

if not "%1" == "" (
  set count=%1
)

rem docker rm -f $(docker ps -a -q --filter="name=yyang-node-app")

for /l %%x in (1, 1, %count%) do (
  docker rm -f yyang-node-app-%%x > nul 2>&1
  set /a port=19000-%%x
  start /B docker run -p %port%:9000 --name yyang-node-app-%%x yyang/node-app > nul 2>&1
)

exit 0
