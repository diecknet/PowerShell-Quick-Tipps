<#    _ _           _               _   
   __| (_) ___  ___| | ___ __   ___| |_ 
  / _` | |/ _ \/ __| |/ / '_ \ / _ \ __|
 | (_| | |  __/ (__|   <| | | |  __/ |_ 
  \__,_|_|\___|\___|_|\_\_| |_|\___|\__|
         PowerShell Quick Tipp

Get-Date.ps1

Mit Get-Date wird ein Datumsobjekt erzeugt. Standardmäßig ist es das aktuelle Datum.
Es ist aber auch möglich ein anderes Datum anzugeben.

Demo-Videos dazu:
- Datumsobjekt erstellen und formatieren: https://www.youtube.com/shorts/B4isaaEkT9k
- Datumsobjekt für anderes Datum erstellen: https://youtube.com/shorts/sSxOIZgfqa0

❗ Weitere Infos zum Datum formatieren in der Microsoft Dokumentation: https://learn.microsoft.com/de-de/dotnet/standard/base-types/custom-date-and-time-format-strings
#>

# Beispiel 1
# Aktuelles Datum ausgeben
Get-Date

# Beispiel 2
# Aktuelles Datum als Datumsobjekt [System.DateTime] in Variable speichern
$meineVariable = Get-Date

# Beispiel 3
# Datumsobjekt für den 23.09.2010 13:37:01 Uhr erstellen und ausgeben
Get-Date "2010-09-23 13:37:01"

# Beispiel 4
# Datumsobjekt für den 15.12.2050 13:37 Uhr erstellen und ausgeben
Get-Date "2050-12-15 13:37"

# Beispiel 5
# Datum formatieren für eine Ausgabe wie "2023-04-24"
(Get-Date).toString("yyyy-MM-dd")

# Beispiel 6
# Uhrzeit formatieren im 24h Format, wie z.B. "13:37:01"
(Get-Date).toString("HH:mm:ss")

# Beispiel 7
# Datum und Uhrzeit zusammen formatieren, aber ohne Sekunden
(Get-Date).toString("yyyy-MM-dd HH:mm")