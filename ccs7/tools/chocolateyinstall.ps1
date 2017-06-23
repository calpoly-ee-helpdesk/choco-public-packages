# Release credits:
# 	- Version 7.1.0.00: Jim Heald <jrheald@calpoly.edu>

$ErrorActionPreference = 'Stop';

$packageName= 'ccs7'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64 = 'http://software-dl.ti.com/ccs/esd/CCSv7/CCS_7_1_0/exports/ccs_setup_7.1.0.00016.exe'
$installOptions = Join-Path $toolsDir 'install_options.txt'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url 			= $url64

  softwareName  = 'Code Composer Studio*' 

  checksum      = 'F9B8E7AD9BB0F642BCA2548AEFF6B63E226A0E6E456DB6A9999837F52A04A485'
  checksumType  = 'sha256' 

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = "--response-file $installOptions --mode unattended"           
}

Install-ChocolateyPackage @packageArgs 