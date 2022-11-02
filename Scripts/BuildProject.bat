@echo off
pushd "%~dp0"

rem Build the win64 project.

@set EngineDir="C:\Program Files\Epic Games\UE_5.0\Engine\\"
@set ProjectDir="%~dp0..\\"
@set TargetPlatform=Win64
@set Configuration=Development

powershell -Command  "Remove-Item -LiteralPath %ProjectDir%..\Builds\ -Force -Recurse -ErrorAction SilentlyContinue"
powershell -Command  "Remove-Item -LiteralPath %ProjectDir%..\Archive\ -Force -Recurse -ErrorAction SilentlyContinue"

%EngineDir%Build\BatchFiles\RunUAT.bat BuildCookRun -project=%ProjectDir%UE5ThirdPersonEx.uproject -noP4 -clientconfig=%Configuration% -serverconfig=%Configuration% -unrealexe=%EngineDir%Binaries\Win64\UnrealEditor-Cmd.exe -utf8output -platform=%TargetPlatform% -targetplatform=%TargetPlatform% -build -cook -platform=Win64 -unversionedcookedcontent -skipcookingeditorcontent -pak -distribution -compressed -stage -package -rocket -prereqs -map=ThirdPersonMap+ThirdPersonMap -stagingdirectory=%ProjectDir%..\Builds -archive -archivedirectory=%ProjectDir%..\Archive

powershell -Command "Compress-Archive -Path %ProjectDir%..\Archive\ -DestinationPath %ProjectDir%..\Archive.zip"

popd
