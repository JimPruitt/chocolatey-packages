$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="fluxctl";
        'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
        'Url'           = "https://github.com/weaveworks/flux/releases/download/1.24.3/fluxctl_windows_amd64";
        'Checksum'      = "DDE5E1C293B7B9642ECCC3E8EDBCE7A1E08B68C0ACABD70C629D7E51E62E6966";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Get-ChocolateyWebFile @xargs

