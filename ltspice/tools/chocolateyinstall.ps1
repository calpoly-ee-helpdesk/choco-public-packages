$ErrorActionPreference  = 'Stop'

$packageName= 'ltspice'
$toolsDir   			= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installScript          = Join-Path $toolsDir 'Install.exe'
$url 					= 'http://ltspice.linear-tech.com/software/LTspiceXVII.exe'

$arguments              = @{
    packageName         = $packageName
    softwareName        = 'LTspiceXVII*'
    url                 = $url
	
    checksum            = '3BC60CC0DC2B0C24D644BE85EA90458926236ADF4021ED9A5B5E6B4E04C9E0E6'
    fileType            = 'exe'
	
    checksumType        = 'sha256'
    validExitCodes      = @(0, 1)
}

Start-Process $installScript
Install-ChocolateyPackage @arguments
