Param(
    # api docker Image Tag
    [Parameter(Mandatory=$false)][string]$simpleapiImageTag,
    [Parameter(Mandatory=$false)][string]$simplewebImageTag
)

if ([string]::IsNullOrEmpty($simpleapiImageTag)) {
    $simpleapiImageTag = 'latest'
}
Write-Host "Docker simpleapi container will be run with image tag: $simpleapiImageTag" -ForegroundColor White

if ([string]::IsNullOrEmpty($simplewebImageTag)) {
    $simplewebImageTag = 'latest'
}
Write-Host "Docker simpleweb container will be run with image tag: $simplewebImageTag" -ForegroundColor White

$simpleapiContainerLabel = $simpleapiImageTag
if($simpleapiImageTag -eq 'latest') {$simpleapiContainerLabel = $simpleapiImageTag.replace(":","_")}
$simplewebContainerLabel = $simplewebImageTag
if($simplewebImageTag -eq 'latest') {$simplewebContainerLabel = $simplewebImageTag.replace(":","_")}

docker run -d --rm -p 8001:80 --name simpleapi_$simpleapiContainerLabel simpleapi:$simpleapiImageTag
docker run -d --rm -p 8000:80 --name simpleweb_$simplewebContainerLabel simpleweb:$simplewebImageTag