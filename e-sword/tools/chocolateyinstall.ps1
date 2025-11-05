$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://e-sword.net/files/e-sword_1450_setup.exe' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'e-Sword'
  checksum      = '59d8ed122485a3bcef4c030c1b10f5316b084e3effd8da91734dbd34417b05339bd63f1dfd030b12c9925d282fc0ac56819ce81247b069051695228648fa9780'
  checksumType  = 'sha512'
  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-package
