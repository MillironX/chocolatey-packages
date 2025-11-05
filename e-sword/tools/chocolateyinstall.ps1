$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://e-sword.net/files/e-sword_1410_setup.exe' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'e-Sword'
  checksum      = '28c08da448f3658f199e0859bde4567b43a41ab8262e272a8b1b24e6470d1f6e4a42ea0b20f883a43aa06e31ed88093b18c656ba63d061d1222b943c392690ab'
  checksumType  = 'sha512'
  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-package
