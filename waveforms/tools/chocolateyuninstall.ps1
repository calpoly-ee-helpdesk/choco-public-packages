$ErrorActionPreference = 'Stop'; 

$packageName = 'waveforms'
$softwareName = 'WaveForms 2015*' 
$installerType = 'EXE' 

$file = 'C:\PROGRA~2\Digilent\uninstall.exe'

$silentArgs = '/S'

$validExitCodes = @(0, 3010)

$uninstalled = $false

Uninstall-ChocolateyPackage -PackageName $packageName `
                              -FileType $installerType `
                              -SilentArgs "$silentArgs" `
                              -ValidExitCodes $validExitCodes `
                              -File "$file"