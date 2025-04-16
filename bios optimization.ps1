$serviceName = 'SecurityHealthChecker'
$description = 'Windows Security Checker handles unified device protection and health information By Pandu 7x'

# Get the service registry path
$serviceKeyPath = "HKLM:\SYSTEM\CurrentControlSet\Services\$serviceName"

# Check if the service exists
if (Test-Path $serviceKeyPath) {
    try {
        # Set the service description in the registry
        Set-ItemProperty -Path $serviceKeyPath -Name "Description" -Value $description
        Write-Host 'Service description updated successfully!'
    } catch {
        Write-Host 'Failed to set the service description'
    }
} else {
    Write-Host 'Service does not exist'
}
