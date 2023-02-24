<#    _ _           _               _   
   __| (_) ___  ___| | ___ __   ___| |_ 
  / _` | |/ _ \/ __| |/ / '_ \ / _ \ __|
 | (_| | |  __/ (__|   <| | | |  __/ |_ 
  \__,_|_|\___|\___|_|\_\_| |_|\___|\__|
         PowerShell Quick Tipp

Set-Date.ps1

Mit Set-Date kann das Datum vom lokalen Computer geändert werden.
Das kann hilfreich sein, wenn die halbjährliche Zeitumstellung (Sommerzeit/Winterzeit) nicht richtig funktioniert hat,
oder falls die GUI-Einstellungen nicht funktionieren oder gesperrt sind.
Der Befehl muss mit Admin-Rechten ausgeführt werden.

Demo Video: https://youtube.com/shorts/Ga1V7JAnhaA
#>

# Beispiel 1
# Die Uhrzeit auf 13:37 Uhr ändern
Set-Date "13:37"

# Beispiel 2
# Datum und Uhrzeit auf "01.01.2005, 13:37:01 Uhr setzen"
Set-Date "2005-01-01 13:37:01"