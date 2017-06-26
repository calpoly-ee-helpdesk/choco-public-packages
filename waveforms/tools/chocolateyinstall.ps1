$ErrorActionPreference = 'Stop'; 

$packageName= 'waveforms' 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://files.digilent.com/Software/Waveforms2015/3.5.4/digilent.waveforms_v3.5.4.exe'

$silentArgs = '/S /AllUsers'
[array]$uninstallKeys = Get-UninstallRegistryKey -SoftwareName "WaveForms"
if ($uninstallKeys.Count -ge 1) { $silentArgs += ' /Upgrade' }

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'Waveforms 2015*'

  checksum      = '6FD0CF3C8BE6223991AC97F6E93CBF4593C2A3ADCE3D2D6179F0614CC23EFF11'
  checksumType  = 'sha256'

  silentArgs 	= $silentArgs
  validExitCodes= @(0, 3010, 1641)
  
}

Install-ChocolateyPackage @packageArgs 