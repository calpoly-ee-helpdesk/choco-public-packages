$packageName= 'S2'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'S2' `
 -Url 'https://www.parallax.com/sites/default/files/downloads/28136-S2-GUI-v1.8-setup.zip' `
 -UnzipLocation $toolsDir

$fileLocation = Join-Path $toolsDir 's2_v1.8_setup.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  file          = $fileLocation
  silentArgs    = "/verysilent"
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'S2'
}

Install-ChocolateyInstallPackage @packageArgs