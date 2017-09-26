@echo Off

set version=3.0.0

REM Restore
call dotnet restore

REM Build
dotnet pack -c Release -o ..

