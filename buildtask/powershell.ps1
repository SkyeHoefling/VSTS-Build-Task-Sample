[CmdletBinding()]
param()

Trace-VstsEnteringInvocation $MyInvocation
try {
    # Get inputs.
    $inputName = Get-VstsInput -Name 'name' -Require

    Write-Host "Hello $inputName"
} finally {
    Trace-VstsLeavingInvocation $MyInvocation
}