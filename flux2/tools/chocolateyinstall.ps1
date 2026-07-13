$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'    = "flux"
    'UnzipLocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
    'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.9.2/flux_2.9.2_windows_386.zip"
    'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.9.2/flux_2.9.2_windows_amd64.zip"
    'Checksum'       = "6A830FB6FC86E96E29EEE73A05B1CEB466DE1DF4F3EA80018535119E839D3F84"
    'Checksum64'     = "ECEADDF7782AE5959E37D1D3620A70C68EF834AD1107BA6D9049A58C088A566C"
    'ChecksumType'   = "SHA256"
    'ChecksumType64' = "SHA256"
}

Install-ChocolateyZipPackage @xargs
