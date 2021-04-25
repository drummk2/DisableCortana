<#
.SYNOPSIS
Allows one to disable Cortana.

.DESCRIPTION
The Disable-Cortana cmdlet removes Cortana by disabling it in the registry and/or removing its Appx package entirely from the system.

.PARAMETER All
Whether or not all disabling measures should be carried out.

.PARAMETER DisableInRegistry
Whether or not Cortana should be disabled in the registry.

.PARAMETER RemovePackage
Whether or not the Cortana package should be removed from this machine.

.LINK
https://github.com/drummk2/DisableCortana
#>

#Requires -RunAsAdministrator
param (
  [Parameter(Mandatory=$false)]
  [switch]$All = $false,

  [Parameter(Mandatory=$false)]
  [switch]$DisableInRegistry = $false,

  [Parameter(Mandatory=$false)]
  [switch]$RemovePackage = $false
)

# Disable Cortana by adding a key to the registry stating that Cortana is not allowed on the machine in question.
if ($DisableInRegistry -Or $All) {
  New-Item -ErrorAction SilentlyContinue -Name 'Windows Search' -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\' | Out-Null
  New-ItemProperty -ErrorAction SilentlyContinue -Name 'AllowCortana' -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search' -PropertyType DWORD -Value '0' | Out-Null
}

# Remove the Cortana package from this machine using 'Remove-AppxPackage'.
if ($RemovePackage -Or $All) {M
  Get-AppxPackage -AllUsers Microsoft.549981C3F5F10 | Remove-AppPackage -AllUsers -Confirm
}