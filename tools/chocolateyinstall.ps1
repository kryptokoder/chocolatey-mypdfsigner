
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.kryptokoder.com/MyPDFSigner-3.1.1-1-x86_64.exe'
$url64      = 'https://www.kryptokoder.com/MyPDFSigner-3.1.1-1-x86_64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64

  softwareName  = 'mypdfsigner*'

  checksum64    = '0ae23cb05bffe78d26a0b8bd9a285c4c820e30285c1865db536a7922cfc758f4'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
