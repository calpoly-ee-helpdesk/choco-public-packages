$ErrorActionPreference = 'Stop'; 

$packageName = 'atmel-studio'
$softwareName = 'Atmel Studio' 
$installerType = 'EXE' 

$toolsDir = Join-Path $env:ChocolateyPackageFolder "tools"

$file = '\\129.65.138.9\Software$\Atmel\Atmel Studio\as-installer-7.0.1417-web.exe'
$silentArgs = "-s -uninstall"

$validExitCodes = @(0, 3010, 1605, 1614, 1641)

$uninstalled = $false

Uninstall-ChocolateyPackage -PackageName $packageName `
                              -FileType $installerType `
                              -SilentArgs "$silentArgs" `
                              -ValidExitCodes $validExitCodes `
                              -File "$file"
