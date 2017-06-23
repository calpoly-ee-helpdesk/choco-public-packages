$ErrorActionPreference = 'Stop'; 

$packageName = 'ccs7'
$softwareName = 'Code Composer Studio*' 
$installerType = 'EXE' 

$file = 'C:\ti\ccsv7\uninstall_ccs.exe'

$silentArgs = '--mode unattended'

$validExitCodes = @(0, 3010, 1605, 1614, 1641)

$uninstalled = $false

Uninstall-ChocolateyPackage -PackageName $packageName `
                              -FileType $installerType `
                              -SilentArgs "$silentArgs" `
                              -ValidExitCodes $validExitCodes `
                              -File "$file"