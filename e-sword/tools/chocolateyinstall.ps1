$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://e-sword.net/files/e-sword_1450_setup.exe' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'e-Sword'
  checksum      = '2d3a67edda7ebdb5d2a656c0947483e92b087bbed3269b6d328e6e25126de4d3d1e9044e96d26f95db5a2e5e85abc9e904fb6ed26d6ac3478a0a19063e1c996e'
  checksumType  = 'sha512'
  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-package
