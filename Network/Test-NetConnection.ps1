<#    _ _           _               _   
   __| (_) ___  ___| | ___ __   ___| |_ 
  / _` | |/ _ \/ __| |/ / '_ \ / _ \ __|
 | (_| | |  __/ (__|   <| | | |  __/ |_ 
  \__,_|_|\___|\___|_|\_\_| |_|\___|\__|
         PowerShell Quick Tipp

Test-NetConnection
Mit Test-NetConnection kann:
- ein normaler PING durchgeführt werden
- die Verbindung zu einem TCP-Port geprüft werden
- und die Rückgabe kann in PowerShell weiterverarbeitet werden (Rückgabe ist ein Objekt)

Kurzes Demo-Video zur Veranschaulichung: https://youtube.com/shorts/gfGL_UUTpOM

Getestet mit Windows PowerShell 5.1 und PowerShell 7.3.1
#>

# Beispiel 1
# Ein normaler Ping (ICMPv4 Echoanforderung) an die IPv4-Adresse 172.67.170.21
Test-NetConnection 172.67.170.21

# Beispiel 2
# Rückgabe eines Ping in einer Variablen speichern und weiterverarbeiten
# Hierfür wird die Eigenschaft "PingSucceeded" der Rückgabe überprüft.
$Verbindung = Test-NetConnection 172.67.170.21
if($Verbindung.PingSucceeded) {
    Write-Host "Das System scheint erreichbar zu sein :)"
} else {
    Write-Host "Das System scheint nicht erreichbar zu sein :("
}

# Beispiel 3
# Verbindung zum TCP Port 80 an der IPv4-Adresse 172.67.170.21 testen
Test-NetConnection 172.67.170.21 -Port 80

# Beispiel 4
# Test der Verbindung zu RDP an der IPv4-Adresse 192.168.1.100
# Der Remote Desktop Protokoll Port 3389 wird automatisch verwendet, 
# wenn der Parameter -CommonTCPPort auf "RDP" gesetzt wird
Test-NetConnection 192.168.100.1 -CommonTCPPort RDP

# Beispiel 5
# Verbindung zum TCP Port 22 an der IPv4-Adresse 172.67.170.21 testen.
# Rückgabe in Variable $Verbindung speichern und weiterverarbeiten.
# Die Eigenschaft "TcpTestSucceeded" zeigt, ob die Verbindung zum Port erfolgreich war.
$Verbindung = Test-NetConnection 172.67.170.21 -Port 22
if($Verbindung.TcpTestSucceeded) {
    Write-Host "Die Verbindung zum Port 22 war erfolgreich :)"
} else {
    Write-Host "Die Verbindung zum Port 22 war nicht erfolgreich :("
}