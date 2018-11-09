$ErrorActionPreference = 'Stop';

#Generate the new filename based on what we're famliar with 
$exeName = "fluxctl"
$fileType   = "exe"

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir "$exeName.$fileType"

$url        = 'https://github.com/weaveworks/flux/releases/download/1.8.0/fluxctl_windows_amd64'

#Download the file from releases
Get-ChocolateyWebFile $packageName $fileLocation $url

Install-BinFile -Name $exeName -Path $fileLocation