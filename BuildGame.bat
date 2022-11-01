@echo off
pushd "%~dp0"

rem Command generated using the editor's project launcher.
rem Use `-nocompileeditor` for forcing the editor not to compile.
rem .\Engine\Build\BatchFiles\RunUAT.bat BuildCookRun -project=%~dp0UE5ThirdPersonEx\UE5ThirdPersonEx.uproject -nop4 -clientconfig=Development -serverconfig=Development -unrealexe=%~dp0Engine\Binaries\Win64\UnrealEditor-Cmd.exe -utf8output -platform=Win64 -targetplatform=Win64 -build -cook -map=Splash.umap+Map.umap+Forest.umap -cookdir=%~dp0\<project_name>\Content\Stage\Prints\Abilities+%~dp0\<project_name>\Content\Stage\Animations -skipcookingeditorcontent -unversionedcookedcontent -pak -distribution -compressed -stage -package -stagingdirectory="%~dp0Dist"

"C:\Program Files\Epic Games\UE_5.0\Engine\Build\BatchFiles\RunUAT.bat" BuildCookRun -project=%~dp0UE5-ThirdPerson-Example/UE5ThirdPersonEx.uproject -noP4 -clientconfig=Development -serverconfig=Development -nocompile -nocompileeditor -installed -unrealexe="C:\Program Files\Epic Games\UE_5.0\Engine\Binaries\Win64\UnrealEditor-Cmd.exe" -utf8output -build -cookonthefly -ddc=InstalledDerivedDataBackendGraph -map= -compressed -stage -package -stagingdirectory=%~dp0Builds -cmdline=" -Messaging" -archive -archivedirectory=%~dp0Archive

popd
