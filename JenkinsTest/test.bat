@echo off

rem 
set HTML_FILE=D:\SEM-6\DevOps\JenkinsTest\index.html

rem
if not exist "%HTML_FILE%" (
   echo Error: HTML file not found
   exit /b 1
)

rem 
findstr /c:"<!DOCTYPE html>" "%HTML_FILE%" >nul
if errorlevel 1 (
    echo Error: HTML file does not contain expected content
    exit /b 1
)

echo HTML file exists and contains expected content.
exit /b 0
