$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'    = "flux"
    'UnzipLocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
    'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.10.0/flux_2.10.0_windows_386.zip"
    'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.10.0/flux_2.10.0_windows_amd64.zip"
    'Checksum'       = "34FBBAD820E83C3F23D19302650D3ED7340BE327ABC49AF976BBCA42283028DE"
    'Checksum64'     = "750250D4DCC828C395D7EDAF72C1787D34AF697FC3D7BC310D32955A5269823D"
    'ChecksumType'   = "SHA256"
    'ChecksumType64' = "SHA256"
}

Install-ChocolateyZipPackage @xargs
