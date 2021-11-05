$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="fluxctl";
        'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
        'Url'           = "https://github.com/fluxcd/flux/releases/download/1.24.2/fluxctl_windows_amd64";
        'Checksum'      = "5BC3B2502536B55CA80ED41B574D6E95BFE9B54AD34C8550A26B22B80B9EFA33";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Get-ChocolateyWebFile @xargs

