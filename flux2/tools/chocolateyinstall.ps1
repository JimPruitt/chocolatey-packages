$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'    = "flux"
    'UnzipLocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
    'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.9.4/flux_2.9.4_windows_386.zip"
    'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.9.4/flux_2.9.4_windows_amd64.zip"
    'Checksum'       = "B06146500AA8A070DA259C6CEB29B8BA44AD6E4FC9C6120BD28DF2D0DED9E5D5"
    'Checksum64'     = "524A148BDC77D6BAA05FB22472E2ECF153F51C198FF299475A7245E4016B06C2"
    'ChecksumType'   = "SHA256"
    'ChecksumType64' = "SHA256"
}

Install-ChocolateyZipPackage @xargs
