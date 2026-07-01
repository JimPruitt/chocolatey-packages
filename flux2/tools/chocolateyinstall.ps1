$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'    = "flux"
    'UnzipLocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
    'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.9.0/flux_2.9.0_windows_386.zip"
    'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.9.0/flux_2.9.0_windows_amd64.zip"
    'Checksum'       = "E721184EB380D9654AA40AC29770BA524B9D58FCE67BEB66CDCF2CAA6DE56642"
    'Checksum64'     = "9D0A60C8398B13B2EDCE23FF36B3FAC0166AD0A829FF9EAD0D5DDCF8AAC8F8C6"
    'ChecksumType'   = "SHA256"
    'ChecksumType64' = "SHA256"
}

Install-ChocolateyZipPackage @xargs
