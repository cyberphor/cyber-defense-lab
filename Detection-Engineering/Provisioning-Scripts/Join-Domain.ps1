$Username = "evil.corp\vagrant"
$Password = ConvertTo-SecureString "vagrant" -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential $Username, $Password
Add-Computer -DomainName "evil.corp" -Credential $Credential