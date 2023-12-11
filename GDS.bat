@echo off

for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr IPv4') do set ip=%%a
set ip=%ip:~1%
start http://%ip%:8000/
python ./dvds/manage.py runserver 0.0.0.0:8000

pause