@echo Off

set version=3.0.0

REM Build
"%programfiles(x86)%\MSBuild\14.0\Bin\MSBuild.exe" MygetCITest.sln /p:Configuration=Release

REM Package
mkdir Build
call %nuget% pack "MygetCITest\Document\Document.csproj" -symbols -o Build -p Configuration=Release %version%