@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

choco install --force javaruntime
choco install --force google-chrome-x64
choco install --force notepadplusplus.install
choco install --force git.install /GitAndUnixToolsOnPath
choco install --force sourcetree
choco install --force githubforwindows
choco install --force virtualbox
choco install --force vagrant
choco install --force putty.install
choco install --force packer
