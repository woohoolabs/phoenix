@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

choco install -y javaruntime
choco install -y google-chrome-x64
choco install -y notepadplusplus.install
choco install -y git.install /GitAndUnixToolsOnPath
choco install -y sourcetree
choco install -y githubforwindows
choco install -y putty.install
choco install -y packer
choco install -y mysql.workbench
