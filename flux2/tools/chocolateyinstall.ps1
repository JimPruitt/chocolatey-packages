$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'    = "flux"
    'UnzipLocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
    'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.9.1/flux_2.9.1_windows_386.zip"
    'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.9.1/flux_2.9.1_windows_amd64.zip"
    'Checksum'       = "8B1F8410ADE10BFE66581776A1AAD9FD1A4220EC53C4519007CB4557F5A8734D"
    'Checksum64'     = "54A33078141799052068FA8AFCE30178FFDD15A336ADB50D44F8581E09C702EA"
    'ChecksumType'   = "SHA256"
    'ChecksumType64' = "SHA256"
}

Install-ChocolateyZipPackage @xargs
