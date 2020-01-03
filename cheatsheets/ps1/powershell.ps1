Get-Help Get-ChildItem -detailed
Get-Module
Install-Module -Name Az -AllowClobber
Set-ExecutionPolicy RemoteSigned
Update-Module -Name Az
Import-Module Az
Connect-AzAccount
Select-AzSubscription -Subscription "Visual Studio Enterprise"
Get-AzResourceGroup | Format-Table
New-AzResourceGroup -Name <name> -Location <location>
Get-AzResource | ft