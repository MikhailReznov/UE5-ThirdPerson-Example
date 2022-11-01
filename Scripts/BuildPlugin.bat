@echo off
pushd "%~dp0"

rem glTFRuntime plugin packaging command.

@set EngineDir="C:\Program Files\Epic Games\UE_5.0\Engine\"
@set ProjectDir=%~dp0..\

powershell -Command  "Remove-Item -LiteralPath %ProjectDir%..\glTFRuntime\ -Force -Recurse -ErrorAction SilentlyContinue"

%EngineDir%Build\BatchFiles\RunUAT.bat BuildPlugin -Rocket -Plugin=%ProjectDir%Plugins\glTFRuntime\glTFRuntime.uplugin -TargetPlatforms=Win64 -Package=%ProjectDir%..\glTFRuntime

popd
