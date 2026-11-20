$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'    = "flux"
    'UnzipLocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
    'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.10.1/flux_2.10.1_windows_386.zip"
    'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.10.1/flux_2.10.1_windows_amd64.zip"
    'Checksum'       = "26EB9D8804D132B67C81C6D856BFB14158A8A7AF124610D7B62CCA99AEEAB45B"
    'Checksum64'     = "ACB91B95222166BF0F2F62F81EA0BBBE7F271732700F5DB164DE306DD4EFBDF3"
    'ChecksumType'   = "SHA256"
    'ChecksumType64' = "SHA256"
}

Install-ChocolateyZipPackage @xargs
