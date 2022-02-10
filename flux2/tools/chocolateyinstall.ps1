$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.26.3/flux_0.26.3_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.26.3/flux_0.26.3_windows_amd64.zip"
        'Checksum'       = "A584113ED89377FE5FB586922AD850C64C530AB665DD1397F3E3780C33425C53";
        'Checksum64'     = "BB7AE342B45EE4F9E66606622AEC668B6E041291E9069097E11AB5B7A805DC21"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

