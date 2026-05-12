$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'    = "flux"
    'UnzipLocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
    'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.8.7/flux_2.8.7_windows_386.zip"
    'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.8.7/flux_2.8.7_windows_amd64.zip"
    'Checksum'       = "FC93DC0756EC0F10B5B67FCD67307703CB3ABEDA482626743FAFD105ADCF2FE6"
    'Checksum64'     = "E703C645180D2665269F5643408CD257C2553E2245F5F3AD577EDD1DE2B4092B"
    'ChecksumType'   = "SHA256"
    'ChecksumType64' = "SHA256"
}

Install-ChocolateyZipPackage @xargs
