Param(
    # api docker Image Tag
    [Parameter(Mandatory=$false)][string]$appVersion,
    [Parameter(Mandatory=$false)][string]$version,
    [Parameter(Mandatory=$false)][string]$chartSourcePath,
    [Parameter(Mandatory=$false)][string]$packageDestinationPath

)

echo "helm package  --dependency-update --destination $packageDestinationPath --version $version --app-version $appVersion $chartSourcePath"
helm package  --dependency-update --destination $packageDestinationPath --version $version --app-version $appVersion $chartSourcePath

