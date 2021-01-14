#安装exchangeonline 模块
Install-Module -Name ExchangeOnlineManagement
$username = "admin@xxx.com"
$password = ConvertTo-SecureString  "password" -AsPlainText -Force
$userCredential=New-Object System.Management.Automation.PSCredential($username,$password)
Import-Module ExchangeOnlineManagement
#Connect-ExchangeOnline -AzureEnvironment AzureChinaCloud -Credential $UserCredential
Connect-ExchangeOnline -Credential $UserCredential -ShowProgress $true -ExchangeEnvironmentName O365China
Get-QuarantineMessage –SenderAddress "syntao@batch.lingxi360.com"
Get-QuarantineMessage –SenderAddress "syntao@batch.lingxi360.com" | Release-QuarantineMessage -ReleaseToAll
