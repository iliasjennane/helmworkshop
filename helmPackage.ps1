Param(
    # api docker Image Tag
    [Parameter(Mandatory=$false)][string]$appVersion,
    [Parameter(Mandatory=$false)][string]$version,
    [Parameter(Mandatory=$false)][string]$chartSourcePath,
    [Parameter(Mandatory=$false)][string]$packageDestinationPath

)

helm package simpleapp --dependency-update --destination $packageDestinationPath --version $version $chartSourcePath 

