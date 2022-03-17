docker pull mcr.microsoft.com/windows/servercore:ltsc2022

New-Item -Path busybox -ItemType Directory
Invoke-WebRequest -Uri https://raw.githubusercontent.com/moby/moby/master/contrib/busybox/Dockerfile -o busybox/Dockerfile
docker build busybox --build-arg WINDOWS_BASE_IMAGE_TAG=ltsc2022 -t busybox
