@echo off
echo [INFO] Packaging a executable war.

cd %~dp0
cd ..

set MAVEN_OPTS=%MAVEN_OPTS%
call mvn clean package -Pstandalone

echo [INFO] Executable war had been packaged as target/standalone.war


cd target

java -jar ct-cloud-proxy-0.2.0-standalone.war

pause