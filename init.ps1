Get-NetFirewallPortFilter | ?{$_.LocalPort -eq 5985 } | Get-NetFirewallRule | ?{ $_.Direction –eq "Inbound" -and $_.Profile -eq "Public" -and $_.Action –eq "Allow"} | Set-NetFirewallRule -RemoteAddress "Any"

