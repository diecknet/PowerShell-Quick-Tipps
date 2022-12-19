<#    _ _           _               _   
   __| (_) ___  ___| | ___ __   ___| |_ 
  / _` | |/ _ \/ __| |/ / '_ \ / _ \ __|
 | (_| | |  __/ (__|   <| | | |  __/ |_ 
  \__,_|_|\___|\___|_|\_\_| |_|\___|\__|
         PowerShell Quick Tipp

Add-Computer
Mit Add-Computer kann ein Computer zu einer Windows Server Active Directory Domäne hinzugefügt werden.

Kurzes Demo-Video zur Veranschaulichung: https://youtube.com/shorts/KHcGi_r5JrI
#>

# Beispiel 1
# Lokalen Computer zur Domäne (-DomainName) demotenant.de hinzufügen, Rückfragen verhindern (-Force), automatisch neustarten (-Restart)
Add-Computer -DomainName demotenant.de -Force -Restart 

# Beispiel 2
# Optional: Mit -OUPath kann eine Organisationseinheit angegeben werden, in der das Computerkonto landen soll
# Die Angabe der OU muss in der DistinguishedName-Schreibweise erfolgen
Add-Computer -DomainName demotenant.de -Force -Restart -OUPath "OU=Computer,OU=MyCompany,DC=demotenant,DC=de"

# Beispiel 3
# Zugangsdaten werden zuerst abgefragt und dann per -Credential Parameter durch Add-Computer verwendet
$AdminCredentials = Get-Credential
Add-Computer -DomainName demotenant.de -Force -Restart -Credential $AdminCredentials