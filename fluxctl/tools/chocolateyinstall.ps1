$ErrorActionPreference = 'Stop';

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'   ="fluxctl";
    'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
    'Url'           = "https://github.com/weaveworks/flux/releases/download/1.14.2/fluxctl_windows_amd64";
    'Checksum'      = "4CE1B995BD73C978F55AFF7BB9BF171A5D322C5C0F8A3DAE4F28D3BA441356F4";
    'ChecksumType'  = "SHA256"
}

#Download the file from releases
Get-ChocolateyWebFile @xargs