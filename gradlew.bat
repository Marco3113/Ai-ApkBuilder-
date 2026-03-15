@echo off
if "%GRADLE_HOME%"=="" (
  gradle %*
) else (
  "%GRADLE_HOME%\bin\gradle" %*
)
