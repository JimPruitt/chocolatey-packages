$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.6.2/flux_2.6.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.6.2/flux_2.6.2_windows_amd64.zip"
        'Checksum'       = "E7BAAC5DA49ADFDB804453703CCCE33994E9BBD546B889F7E4DC832493EB5E9D";
        'Checksum64'     = "A71D06D4B2DEA5218FB68A11DC417FCF6BBA1AC5AC17F1FE3272DB5EAD26C20F"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

