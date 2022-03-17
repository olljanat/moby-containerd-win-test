$ProgressPreference = 'SilentlyContinue'

Invoke-WebRequest -Uri https://go.dev/dl/go1.18.windows-amd64.zip -OutFile c:\go.zip
Expand-Archive -Path C:\go.zip -DestinationPath c:\

Invoke-WebRequest -Uri https://master.dockerproject.org/windows/x86_64/docker.exe -OutFile c:\windows\docker.exe

Remove-Item -Path bin -Recurse -Force
Invoke-WebRequest -Uri https://github.com/containerd/containerd/releases/download/v1.6.1/containerd-1.6.1-windows-amd64.tar.gz -o containerd.tar.gz
tar zxvf .\containerd.tar.gz
Remove-Item -Path containerd.tar.gz -Force
Invoke-WebRequest -Uri https://master.dockerproject.org/windows/x86_64/dockerd.exe -o bin\dockerd.exe