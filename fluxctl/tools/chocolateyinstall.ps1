$ErrorActionPreference = 'Stop';

#Generate the new filename based on what we're famliar with 
$exeName = "fluxctl"
$fileType   = "exe"
$checkSum = "9241C754EBCF7B52374EF01AF03D19F0933282051159A785A48AD8EB01E05B79"
$checkSumType = "SHA256"

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir "$exeName.$fileType"

$url        = 'https://github.com/weaveworks/flux/releases/download/1.9.0/fluxctl_windows_amd64'

#Download the file from releases
Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $fileLocation -Url $url -Checksum $checkSum -ChecksumType $checkSumType