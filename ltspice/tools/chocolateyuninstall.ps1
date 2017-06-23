$ErrorActionPreference = 'Stop'; 

$packageName = 'ltspice'
$softwareName = 'LTSpice*' 
$installerType = 'EXE' 
$file = 'C:\PROGRA~1\LTC\LTspiceXVII\XVIIx64.exe'

$installScript = Join-Path $env:ChocolateyPackageFolder 'tools\UnInstall.exe'

$silentArgs = '-uninstall'

$validExitCodes = @(0, 3010, 1605, 1614, 1641)

$uninstalled = $false

Start-Process $installScript
Uninstall-ChocolateyPackage -PackageName $packageName `
                              -FileType $installerType `
                              -SilentArgs "$silentArgs" `
                              -ValidExitCodes $validExitCodes `
                              -File "$file"


