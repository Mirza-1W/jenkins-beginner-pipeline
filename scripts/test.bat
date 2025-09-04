@echo off
echo Running tests...
findstr /c:"hello" build\hello.txt >nul
if %ERRORLEVEL% neq 0 (
  echo TEST FAILED
  exit /b 1
)
echo TEST PASSED

