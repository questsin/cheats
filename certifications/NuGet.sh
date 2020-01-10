## repo at nuget.org
##nuget.exe
## 3pp private repos
## MyGet, Antifactory, TeamCity
## dotnet and nuget are like alias
dotnet --help
dotnet add package autofac
nuget restore

# Uses the project file in the current folder by default
msbuild -t:restore