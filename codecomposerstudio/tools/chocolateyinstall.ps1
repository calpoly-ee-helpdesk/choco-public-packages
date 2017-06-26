$ErrorActionPreference = 'Stop';

$packageName= 'codecomposerstudio'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64 = 'https://downloads.ti.com/ccs/esd/CCSv7/CCS_7_2_0/exports/ccs_setup_7.2.0.00013.exe'
$installOptions = Join-Path $toolsDir 'install_options.txt'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url 			= $url64

  softwareName  = 'Code Composer Studio*' 

  checksum      = 'E447A1D11F4524039686DE4639551790A0087B01BCC3011F323943EA92FC0826'
  checksumType  = 'sha256' 

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = "--response-file $installOptions --mode unattended"           
}

Install-ChocolateyPackage @packageArgs 