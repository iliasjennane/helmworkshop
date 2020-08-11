Param(
    # api docker Image Tag
    [Parameter(Mandatory=$false)][string]$simpleapiImageTag,
    [Parameter(Mandatory=$false)][string]$simplewebImageTag
)

if ([string]::IsNullOrEmpty($simpleapiImageTag)) {
    $simpleapiImageTag = 'latest'
}
Write-Host "Docker simpleapi image will be built with tag: $simpleapiImageTag" -ForegroundColor White


if ([string]::IsNullOrEmpty($simplewebImageTag)) {
    $simplewebImageTag = 'latest'
}
Write-Host "Docker simpleweb image will be built with tag: $simplewebImageTag" -ForegroundColor White

docker build -t simpleapi:$simpleapiImageTag ../simpleapi
docker build -t simpleweb:$simplewebImageTag ../simpleweb

docker image ls "simple*"
