$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'    = "flux"
    'UnzipLocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
    'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.9.3/flux_2.9.3_windows_386.zip"
    'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.9.3/flux_2.9.3_windows_amd64.zip"
    'Checksum'       = "4FA467362E13EA7432909A88F46B565ECC479CB9FA65E41AB5C5D9AFDAE86B03"
    'Checksum64'     = "3AA07433CDD7D63C8C9DF6B9652668443A902A1E2F578C9B44F8354820D01630"
    'ChecksumType'   = "SHA256"
    'ChecksumType64' = "SHA256"
}

Install-ChocolateyZipPackage @xargs
