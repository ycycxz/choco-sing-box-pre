$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if (Test-Connection -ComputerName google.com -Quiet -Count 1) {
  $url64 = "https://github.com/SagerNet/sing-box/releases/download/v1.10.0-rc.1/sing-box-1.10.0-rc.1-windows-amd64.zip"
}
else {
  $url64 = "https://mirror.ghproxy.com/https://github.com/SagerNet/sing-box/releases/download/v1.10.0-rc.1/sing-box-1.10.0-rc.1-windows-amd64.zip"
}

$checksum64 = "2e6ed59417d1f10d92c342af72adf973aef988a2a4453160474edca27270a9ec"

Install-ChocolateyZipPackage $packageName $url64 -checksum64 $checksum64 -UnzipLocation $toolsDir
