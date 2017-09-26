@echo Off
set version=
if not "%PackageVersion%" == "" (
   set version=-Version %PackageVersion%
)