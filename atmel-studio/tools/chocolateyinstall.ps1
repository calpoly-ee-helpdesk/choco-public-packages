$ErrorActionPreference = 'Stop';

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://atmel-studio.s3-website-us-west-2.amazonaws.com/7.0.1417/as-installer-7.0.1417-web.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url         = $url

  softwareName  = 'Atmel Studio*' 

  checksum      = 'A42F205ADA91B279B13AEC5BE0D0C60DE8ED927C5ED2A50010904E28D38BF3C0'
  checksumType  = 'sha256' 

  silentArgs    = "-quiet -log C:\TEMP\atmelstudio7installlog.txt"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs 