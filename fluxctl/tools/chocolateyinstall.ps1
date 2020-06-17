$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="fluxctl";
        'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
        'Url'           = "https://github.com/weaveworks/flux/releases/download/1.19.0/fluxctl_windows_amd64";
        'Checksum'      = "FD4176A0F281AB1BEC557A66E47C0010253160914FC2C6E989C64208543AC1F7";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Get-ChocolateyWebFile @xargs"

