$userCredential=New-Object System.Management.Automation.PSCredential($username,$password)
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://partner.outlook.cn/PowerShell -Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $Session
#查找是否收到相关邮件
Search-Mailbox -Identity receiver@xxx.com -SearchQuery 'from:"sender@xxx.com" -and sent:2019/1/21T11:29..2019/1/21T11:31' -TargetMailbox admin@xxx.com -TargetFolder "1"
#查询并删除
Search-Mailbox -Identity xxx@xxx.com -SearchQuery 'from:"xxx@163.com"' -TargetMailbox admin@xxx.com -TargetFolder "1" -deletecontent -force
