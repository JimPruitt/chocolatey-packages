$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="fluxctl";
        'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
        'Url'           = "https://github.com/weaveworks/flux/releases/download/1.25.1/fluxctl_windows_amd64";
        'Checksum'      = "DCC01461E04896A97C4B9290F4717867FC488EF24932A1C7E7752A979832A7B4";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Get-ChocolateyWebFile @xargs

