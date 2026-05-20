$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'    = "flux"
    'UnzipLocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
    'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.8.8/flux_2.8.8_windows_386.zip"
    'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.8.8/flux_2.8.8_windows_amd64.zip"
    'Checksum'       = "349DAF916A40D896648FEFED0AE66C1C12CCED2FC9807CA161C049BFD9593460"
    'Checksum64'     = "78045FF9A4E2A6C05265D7A027694FBACA43F08F782DA5C9214F852E06189BF8"
    'ChecksumType'   = "SHA256"
    'ChecksumType64' = "SHA256"
}

Install-ChocolateyZipPackage @xargs
