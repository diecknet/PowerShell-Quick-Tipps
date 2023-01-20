<#    _ _           _               _   
   __| (_) ___  ___| | ___ __   ___| |_ 
  / _` | |/ _ \/ __| |/ / '_ \ / _ \ __|
 | (_| | |  __/ (__|   <| | | |  __/ |_ 
  \__,_|_|\___|\___|_|\_\_| |_|\___|\__|
         PowerShell Quick Tipp

Zwischenablage.ps1

Ihr könnt Befehle zu "clip" beziehungsweise zu "Set-Clipboard" pipen, um sie in die Zwischenablage zu kopieren.
Wobei "clip" eigentlich noch die alte "clip.exe" ist.
Mit "Get-Clipboard" könnt ihr den Inhalt der Zwischenablage auslesen.

Demo dazu im folgenden Video: https://youtube.com/shorts/TteSZQF6RQo
#>

# Beispiel 1
# Rückgabe eines Befehls in die Zwischenablage kopieren per "Set-Clipboard"
Get-Volume | Set-Clipboard

# Beispiel 2
# Rückgabe eines Befehls in die Zwischenablage kopieren per "clip.exe"
Get-ChildItem | clip

# Beispiel 3 
# Inhalt der Zwischenablage auslesen und ausgeben
Get-Clipboard

# Beispiel 4
# Inhalt der Zwischenablage auslesen und einer Variable speichern
$Zwischenablage = Get-Clipboard