@echo Off

set version=3.0.0

REM Build
 %nuget% restore
"%programfiles(x86)%\MSBuild\14.0\Bin\MSBuild.exe" MygetCITest.sln /p:Configuration=Release /m /v:M /fl /flp:LogFile=msbuild.log;Verbosity=Normal /nr:false
"%programfiles(x86)%\MSBuild\14.0\Bin\MSBuild.exe" MygetCITest.sln /p:Configuration=Debug /m /v:M /fl /flp:LogFile=msbuild.log;Verbosity=Normal /nr:false


REM Package
mkdir Build
call %nuget% pack "Document\Document.csproj"
