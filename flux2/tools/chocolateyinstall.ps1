$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'    = "flux"
    'UnzipLocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
    'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.9.5/flux_2.9.5_windows_386.zip"
    'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.9.5/flux_2.9.5_windows_amd64.zip"
    'Checksum'       = "FE91BD1B6CEE14B7152D8A971D2F037DD3F6A55105E8166ED2B44F6CC939AA70"
    'Checksum64'     = "1A23053BF9ABBEDBDAC07237F5C6AE9B0DA0BCB77DDBD103FAA99839C6A7F562"
    'ChecksumType'   = "SHA256"
    'ChecksumType64' = "SHA256"
}

Install-ChocolateyZipPackage @xargs
