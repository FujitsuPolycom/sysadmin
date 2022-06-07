$ServiceName = 'Wazuh'
$arrService = Get-Service -Name $ServiceName

if ($arrService.Status -eq 'Running')
{
    Stop-Service $ServiceName
    write-host $ServiceName 'service is' $arrService.status
    write-host $ServiceName 'Service stopping'
    Start-Sleep -seconds 3
    $arrService.Refresh()
}
if ($arrService.Status -eq 'Stopped')
{
    Start-Service $ServiceName
    write-host $ServiceName 'Service starting'
    Write-Host $ServiceName 'Service is Running'
}
Start-Sleep -seconds 4
exit
