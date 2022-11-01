@echo off
pushd "%~dp0"

rem glTFRuntime plugin packaging command.

rm -r -force %~dp0..\..\glTFRuntime\

"C:\Program Files\Epic Games\UE_5.0\Engine\Build\BatchFiles\RunUAT.bat" BuildPlugin -Rocket -Plugin=%~dp0..\Plugins\glTFRuntime\glTFRuntime.uplugin -TargetPlatforms=Win64 -Package=%~dp0..\..\glTFRuntime

popd
