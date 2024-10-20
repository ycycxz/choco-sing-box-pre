$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/SagerNet/sing-box/releases/download/v1.11.0-alpha.1/sing-box-1.11.0-alpha.1-windows-amd64.zip"
}
else {
  $url64 = "https://mirror.ghproxy.com/https://github.com/SagerNet/sing-box/releases/download/v1.11.0-alpha.1/sing-box-1.11.0-alpha.1-windows-amd64.zip"
}

$checksum64 = "0adc55200d34ba53e71cd3215c7db52db71e56058e2bf4d481e70c2192cf5ed2"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir
