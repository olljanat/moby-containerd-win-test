$env:PATH = "$env:PATH;$PSScriptRoot\bin"
Start-Process -FilePath "$PSScriptRoot\bin\containerd.exe" -ArgumentList "--log-level debug" -WorkingDirectory "$PSScriptRoot\bin"
Start-Sleep -Seconds 5
Start-Process -FilePath "$PSScriptRoot\bin\dockerd.exe" -ArgumentList "-D --containerd \\.\pipe\containerd-containerd" -WorkingDirectory "$PSScriptRoot\bin"
Start-Process-FilePath "cmd.exe"
