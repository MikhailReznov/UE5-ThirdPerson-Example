@echo off
pushd "%~dp0"

rem Command generated using the editor's project launcher.
rem Use `-nocompileeditor` for forcing the editor not to compile.
rem .\Engine\Build\BatchFiles\RunUAT.bat BuildCookRun -project=%~dp0UE5ThirdPersonEx\UE5ThirdPersonEx.uproject -nop4 -clientconfig=Development -serverconfig=Development -unrealexe=%~dp0Engine\Binaries\Win64\UnrealEditor-Cmd.exe -utf8output -platform=Win64 -targetplatform=Win64 -build -cook -map=Splash.umap+Map.umap+Forest.umap -cookdir=%~dp0\<project_name>\Content\Stage\Prints\Abilities+%~dp0\<project_name>\Content\Stage\Animations -skipcookingeditorcontent -unversionedcookedcontent -pak -distribution -compressed -stage -package -stagingdirectory="%~dp0Dist"

rem Running Serialized UAT: [ cmd.exe /c ""C:/Program Files/Epic Games/UE_5.0/Engine/Build/BatchFiles/RunUAT.bat" Turnkey -command=VerifySdk -platform=Win64 -UpdateIfNeeded BuildCookRun -skipbuildeditor -target=UE5ThirdPersonEx -platform=Win64 -iostore -pak -prereqs" -nocompile ]

rem "C:\Program Files\Epic Games\UE_5.0\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project=%~dp0UE5ThirdPersonEx.uproject -noP4 -clientconfig=Development -serverconfig=Development -nocompile -nocompileeditor -installed -unrealexe="C:\Program Files\Epic Games\UE_5.0\Engine\Binaries\Win64\UnrealEditor-Cmd.exe" -utf8output -build -cook -CookCultures=en -platform=Win64 -unversionedcookedcontent -ddc=InstalledDerivedDataBackendGraph -map= -compressed -stage -package -stagingdirectory=%~dp0..\Builds -cmdline=" -Messaging" -archive -archivedirectory=%~dp0..\Archive

rem "C:\Program Files\Epic Games\UE_5.0\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project=%~dp0UE5ThirdPersonEx.uproject -noP4 -clientconfig=Development -serverconfig=Development -unrealexe="C:\Program Files\Epic Games\UE_5.0\Engine\Binaries\Win64\UnrealEditor-Cmd.exe" -utf8output -build -cook -platform=Win64 -unversionedcookedcontent -ddc=InstalledDerivedDataBackendGraph -map= -skipcookingeditorcontent -unversionedcookedcontent -pak -distribution -compressed -stage -package -stagingdirectory=%~dp0..\Builds -cmdline=" -Messaging" -archive -archivedirectory=%~dp0..\Archive

@set EngineDir="C:\Program Files\Epic Games\UE_5.0\Engine\"
@set ProjectDir=%~dp0..\

@set TargetPlatform=Win64
@set Configuration=Development

Remove-Item -LiteralPath "%ProjectDir%..\Builds\" -Force -Recurse

Remove-Item -LiteralPath "%ProjectDir%..\Archive\" -Force -Recurse

%EngineDir%Build\BatchFiles\RunUAT.bat BuildCookRun -project=%ProjectDir%UE5ThirdPersonEx.uproject -noP4 -clientconfig=Development -serverconfig=Development -unrealexe=%EngineDir%Binaries\Win64\UnrealEditor-Cmd.exe -utf8output -platform=Win64 -targetplatform=Win64 -build -cook -platform=Win64 -unversionedcookedcontent -skipcookingeditorcontent -unversionedcookedcontent -pak -distribution -compressed -rocket -prereqs -stage -package -stagingdirectory=%ProjectDir%..\Builds -archive -archivedirectory=%ProjectDir%..\Archive

Compress-Archive -Path %ProjectDir%..\Archive\ -DestinationPath %ProjectDir%..\Archive.zip

popd
