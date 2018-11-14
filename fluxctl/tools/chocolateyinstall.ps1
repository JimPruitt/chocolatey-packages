$ErrorActionPreference = 'Stop';

#Generate the new filename based on what we're famliar with 
$exeName = "fluxctl"
$fileType   = "exe"
$checkSum = "BC2061ED5A33C0DA3BA0A28D5AE762B94795EC7CAA3B4F877011B313F6CECE8D"
$checkSumType = "SHA256"

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir "$exeName.$fileType"

$url        = 'https://github.com/weaveworks/flux/releases/download/1.8.0/fluxctl_windows_amd64'

#Download the file from releases
Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $fileLocation -Url $url -Checksum $checkSum -ChecksumType $checkSumType