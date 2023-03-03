<#    _ _           _               _   
   __| (_) ___  ___| | ___ __   ___| |_ 
  / _` | |/ _ \/ __| |/ / '_ \ / _ \ __|
 | (_| | |  __/ (__|   <| | | |  __/ |_ 
  \__,_|_|\___|\___|_|\_\_| |_|\___|\__|
         PowerShell Quick Tipp

Session-Mitschreiben-Transcript.ps1

Mit Start-Transcript könnt ihr eure PowerShell-Sitzung aufzeichnen,
also alle Befehle und Ausgaben mitschreiben lassen.
Die Aufzeichnung läuft bis zum Ende der Session, oder bis 
Stop-Transcript ausgeführt wird.

Demo dazu im folgenden Video: https://youtube.com/shorts/fstmksgoc-8
#>

# Beispiel 1
# Mitschreiben in eine Datei (Pfad wird automatisch gewählt)
Start-Transcript

# Beispiel 2
# Mitschreiben in eine bestimmte Datei
Start-Transcript -Path C:\Temp\MeineSession.txt