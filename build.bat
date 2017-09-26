@echo Off

set version=3.0.0

REM Build
"%programfiles(x86)%\MSBuild\14.0\Bin\MSBuild.exe" MygetCITest.sln /p:Configuration=Release /m /v:M /fl /flp:LogFile=msbuild.log;Verbosity=Normal /nr:false

REM Package
mkdir Build
call %nuget% spec
call %nuget% pack "MygetCITest\Document\Document.nuspec" -Version 2.1.0
