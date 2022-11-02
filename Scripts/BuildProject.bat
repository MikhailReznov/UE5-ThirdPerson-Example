@echo off
pushd "%~dp0"

rem Command generated using the editor's project launcher.
rem Use `-nocompileeditor` for forcing the editor not to compile.
rem .\Engine\Build\BatchFiles\RunUAT.bat BuildCookRun -project=%~dp0UE5ThirdPersonEx\UE5ThirdPersonEx.uproject -nop4 -clientconfig=Development -serverconfig=Development -unrealexe=%~dp0Engine\Binaries\Win64\UnrealEditor-Cmd.exe -utf8output -platform=Win64 -targetplatform=Win64 -build -cook -map=Splash.umap+Map.umap+Forest.umap -cookdir=%~dp0\<project_name>\Content\Stage\Prints\Abilities+%~dp0\<project_name>\Content\Stage\Animations -skipcookingeditorcontent -unversionedcookedcontent -pak -distribution -compressed -stage -package -stagingdirectory="%~dp0Dist"
rem -skipbuildeditor

@set EngineDir="C:\Program Files\Epic Games\UE_5.0\Engine\\"
@set ProjectDir="%~dp0..\\"
@set TargetPlatform=Win64
@set Configuration=Development

powershell -Command  "Remove-Item -LiteralPath %ProjectDir%..\Builds\ -Force -Recurse -ErrorAction SilentlyContinue"
powershell -Command  "Remove-Item -LiteralPath %ProjectDir%..\Archive\ -Force -Recurse -ErrorAction SilentlyContinue"

%EngineDir%Build\BatchFiles\RunUAT.bat BuildCookRun -project=%ProjectDir%UE5ThirdPersonEx.uproject -noP4 -clientconfig=%Configuration% -serverconfig=%Configuration% -unrealexe=%EngineDir%Binaries\Win64\UnrealEditor-Cmd.exe -utf8output -platform=%TargetPlatform% -targetplatform=%TargetPlatform% -build -cook -platform=Win64 -unversionedcookedcontent -skipcookingeditorcontent -pak -distribution -compressed -stage -package -rocket -prereqs -map=ThirdPersonMap+ThirdPersonMap -stagingdirectory=%ProjectDir%..\Builds -archive -archivedirectory=%ProjectDir%..\Archive

powershell -Command "Compress-Archive -Path %ProjectDir%..\Archive\ -DestinationPath %ProjectDir%..\Archive.zip"

popd
