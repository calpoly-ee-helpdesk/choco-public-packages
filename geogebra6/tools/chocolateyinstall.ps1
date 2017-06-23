$ErrorActionPreference = 'Stop';

$packageName= 'geogebra' 
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.geogebra.org/installers/6.0/GeoGebra-Windows-Installer-6-0-363-0.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url

  softwareName  = 'GeoGebra*' 
  
  checksum      = '176639504B1DA8DAE47749236D8F182818EF09179E593A8A8B1AEF084274156F'
  checksumType  = 'sha256' 

  
  silentArgs    = "ALLUSERS=2 /qn" 
  validExitCodes= @(0, 3010, 1641)
 
}

Install-ChocolateyPackage @packageArgs 
