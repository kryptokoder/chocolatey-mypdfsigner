
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.kryptokoder.com/MyPDFSigner-3.1.5-1-x86_64.exe'
$url64      = 'https://www.kryptokoder.com/MyPDFSigner-3.1.5-1-x86_64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64

  softwareName  = 'mypdfsigner*'

  checksum64    = '8a4bb0d85a4a3e685acf002c0bb4eb4fa6301bd42464a9e44d8348e6ec47e4b7'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
