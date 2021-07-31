$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="fluxctl";
        'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
        'Url'           = "https://github.com/fluxcd/flux/releases/download/1.23.1/fluxctl_windows_amd64";
        'Checksum'      = "7FD953DF262B7CE93D84FD5FABC3C768C1DD62A09B8FABD6AD6478973E1E6F38";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Get-ChocolateyWebFile @xargs

