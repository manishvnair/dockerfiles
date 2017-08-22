$ErrorActionPreference = 'Stop';

Write-Host Starting build stage - net-build...

# build base image
docker build -t idevcr.azurecr.io/net-build -f net-build/Dockerfile .

if($LastExitCode -ne 0) { $host.SetShouldExit($LastExitCode )  }