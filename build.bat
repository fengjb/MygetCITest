@echo Off
set config=%1
if "%config%" == "" (
   set config=Release
)

set version=3.0.0

REM Build
"%programfiles(x86)%\MSBuild\14.0\Bin\MSBuild.exe" MygetCITest.sln /p:Configuration="%config%" /m /v:M /fl /flp:LogFile=msbuild.log;Verbosity=Normal /nr:false

REM Package
mkdir Build
call %nuget% pack "MygetCITest\Document\Document.csproj" -symbols -o Build -p Configuration=%config% %version%