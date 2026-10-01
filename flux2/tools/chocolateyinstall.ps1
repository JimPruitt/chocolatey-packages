$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'    = "flux"
    'UnzipLocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
    'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.9.6/flux_2.9.6_windows_386.zip"
    'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.9.6/flux_2.9.6_windows_amd64.zip"
    'Checksum'       = "607ACF203438AB680FFCEBFAECD4AE03A3C2FADA1F22A5C70B3C437846BBBBE5"
    'Checksum64'     = "164E87A13EE8BE864A96DBFE597D938CFCEA60B9F309A2BD8EAAD3E539FBA054"
    'ChecksumType'   = "SHA256"
    'ChecksumType64' = "SHA256"
}

Install-ChocolateyZipPackage @xargs
