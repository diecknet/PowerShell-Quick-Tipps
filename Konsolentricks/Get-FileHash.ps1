<#    _ _           _               _   
   __| (_) ___  ___| | ___ __   ___| |_ 
  / _` | |/ _ \/ __| |/ / '_ \ / _ \ __|
 | (_| | |  __/ (__|   <| | | |  __/ |_ 
  \__,_|_|\___|\___|_|\_\_| |_|\___|\__|
         PowerShell Quick Tipp

Get-FileHash.ps1

Mit Get-FileHash kann die Prüfsumme (Hash) einer Datei berechnet werden.
Zum Beispiel md5 oder sha256.
Demo-Video dazu: https://youtube.com/shorts/8C5HHAjAUnQ

#>

# Beispiel 1
# SHA256 Hash für Datei1.txt berechnen
Get-FileHash Datei1.txt

# Beispiel 2
# MD5 Hash für Datei2.zip berechnen
Get-FileHash Datei2.zip -Algorithm md5

# Beispiel 3
# Hashwerte für mehrere Dateien berechnen
Get-Filehash Datei3.rar,Datei4.7z
