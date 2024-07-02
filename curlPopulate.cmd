REM A script to insert 50 Employee JSON objects into a running container image 
REM of the app-specific Gilhari microservice gilhari5_mysql_populate_local:1.0.
REM
REM The responses are recorded in a log file (curl.log).
REM
REM This script assumes the default port number is 80, but you can 
REM specify a different port number as the first command line argument.
REM Example: curlCommands 8899

IF %1.==. GOTO DefaultPort
SET port=%1
GOTO Proceed

:DefaultPort
SET port=80
GOTO Proceed

:Proceed

echo ** BEGIN OUTPUT ** > curl.log
echo. >> curl.log

echo Using PORT number %port% >> curl.log
echo. >> curl.log

echo ** Delete all Employee objects to start fresh >> curl.log
curl -X DELETE "http://localhost:%port%/gilhari/v1/Emp" >> curl.log
echo. >> curl.log
echo. >> curl.log

echo ** Insert one Employee object >> curl.log
curl -X POST "http://localhost:%port%/gilhari/v1/Emp"  -H "Content-Type: application/json"  -d "{""entity"":{""id"":1,""first_name"":""Manas1"",""last_name"":""Tomar"",""department_id"":1}}" >> curl.log
echo. >> curl.log
echo. >> curl.log

echo ** Insert multiple (three) Employee objects >> curl.log
curl -X POST "http://localhost:%port%/gilhari/v1/Emp"  -H "Content-Type: application/json"  -d "{""entity"":[{""id"":2,""first_name"":""Ashmitta2"",""last_name"":""Dutta"",""department_id"":2}, {""id"":3,""first_name"":""Siddharth3"",""last_name"":""Sharma"",""department_id"":3},{""id"":4,""name"":""Simran4"",""last_name"":""Rao"",""department_id"":4}]}" >> curl.log
echo. >> curl.log
echo. >> curl.log


echo ** Query all Employee objects >> curl.log
curl -X GET "http://localhost:%port%/gilhari/v1/Emp"  -H "Content-Type: application/json" >> curl.log
echo. >> curl.log
echo. >> curl.log

echo ** END OUTPUT ** >> curl.log
echo. >> curl.log

type curl.log
