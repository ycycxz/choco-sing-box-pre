$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/SagerNet/sing-box/releases/download/v1.10.0-alpha.28/sing-box-1.10.0-alpha.28-windows-amd64.zip"
}
else {
  $url64 = "https://mirror.ghproxy.com/https://github.com/SagerNet/sing-box/releases/download/v1.10.0-alpha.28/sing-box-1.10.0-alpha.28-windows-amd64.zip"
}

$checksum64 = "a4b9c3cde39cab347fd5df404c4ef4ab39a3e680f911a428ef45f79ce501fcd7"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir
