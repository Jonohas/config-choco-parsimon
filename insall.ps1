Write-Output "Setting ExecutionPolicy"
Set-ExecutionPolicy AllSigned

# Make sure LongPathNames is enabled
Write-Output "Installing chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Write-Output "Installing packages"
choco install .\choco-parsimon.config
Write-Output "done"