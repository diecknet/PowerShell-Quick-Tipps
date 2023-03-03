<#    _ _           _               _   
   __| (_) ___  ___| | ___ __   ___| |_ 
  / _` | |/ _ \/ __| |/ / '_ \ / _ \ __|
 | (_| | |  __/ (__|   <| | | |  __/ |_ 
  \__,_|_|\___|\___|_|\_\_| |_|\___|\__|
         PowerShell Quick Tipp

Dot-Sourcing-ps1-Dateien-einbinden.ps1

Mit Dot-Sourcing können PowerShell Skripte eingebunden werden.
Also alle definierten Variablen, Funktionen und so weiter stehen dann
im aufrufenden Skript oder der aktuellen Session zur Verfügung. 

Demo dazu im folgenden Video: https://youtube.com/shorts/feWhAwmzk04
#>

# Beispiel 1
# Einbinden eines Skriptes per Dot-Sourcing
. .\meinSkript.ps1