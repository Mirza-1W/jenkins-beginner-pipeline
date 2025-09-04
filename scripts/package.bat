@echo off
echo Packaging...
powershell -NoProfile -Command "Compress-Archive -Path 'build\*' -DestinationPath 'artifact.zip' -Force"

