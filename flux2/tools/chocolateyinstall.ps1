$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.29.1/flux_0.29.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.29.1/flux_0.29.1_windows_amd64.zip"
        'Checksum'       = "4C6E824D8432BD082205494A6ECA7B5EE0F4BF5B550948C72246117765753717";
        'Checksum64'     = "43C8D6A4CD3C61266DD01F57B6F04EED9F96CD391C2B5133E268DBA84E4E9F98"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

