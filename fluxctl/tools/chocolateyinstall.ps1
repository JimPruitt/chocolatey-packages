$ErrorActionPreference = 'Stop';

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'   ="fluxctl";
    'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
    'Url'           = "https://github.com/weaveworks/flux/releases/download/1.13.0/fluxctl_windows_amd64";
    'Checksum'      = "F7B764CA80F09DFB7CF95C483A2E7F9481DCF8023A2910A8F9CE1BA0C33C3D6A";
    'ChecksumType'  = "SHA256"
}

#Download the file from releases
Get-ChocolateyWebFile @xargs