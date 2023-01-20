<#    _ _           _               _   
   __| (_) ___  ___| | ___ __   ___| |_ 
  / _` | |/ _ \/ __| |/ / '_ \ / _ \ __|
 | (_| | |  __/ (__|   <| | | |  __/ |_ 
  \__,_|_|\___|\___|_|\_\_| |_|\___|\__|
         PowerShell Quick Tipp

Stop-Computer_und_Restart-Computer.ps1

Mit Stop-Computer kann einer oder mehrere Computer heruntergefahren werden.
Mit Restart-Computer kann einer oder mehrere Computer neu gestartet werden.

Demo-Video dazu: https://youtube.com/shorts/T4_Nh3Fcq9E

#>

###############################
#  HERUNTERFAHREN / SHUTDOWN  #
###############################

# Beispiel 1
# Den lokalen, eigenen Computer herunterfahren (wenn kein Computer angegeben wird, wird immer der lokale PC genommen)
Stop-Computer

# Beispiel 2
# Den lokalen, eigenen Computer herunterfahren (hier wird explizit der lokale Computer per "localhost" referenziert)
Stop-Computer -ComputerName localhost

# Beispiel 3
# Drei bestimmte Computer werden heruntergefahren. Die einzelnen Einträge per Komma trennen.
Stop-Computer -ComputerName server01,server02,localhost

# Beispiel 4
# Den lokalen, eigenen Computer herunterfahren (wenn kein Computer angegeben wird, wird immer der lokale PC genommen)
# Das beenden von Prozessen die das herunterfahren blockieren wird erzwungen (per -Force)
Stop-Computer -Force

###############################
#     NEUSTART / RESTART      #
###############################

# Beispiel 5
# Den lokalen, eigenen Computer neustarten (wenn kein Computer angegeben wird, wird immer der lokale PC genommen)
Restart-Computer

# Beispiel 6
# Den lokalen, eigenen Computer neustarten (hier wird explizit der lokale Computer per "localhost" referenziert)
Restart-Computer -ComputerName localhost

# Beispiel 7
# Drei bestimmte Computer werden neugestartet. Die einzelnen Einträge per Komma trennen.
Restart-Computer -ComputerName server01,server05.mydomain.com,localhost

# Beispiel 8
# Den lokalen, eigenen Computer neustarten (wenn kein Computer angegeben wird, wird immer der lokale PC genommen)
# Das beenden von Prozessen die das herunterfahren blockieren wird erzwungen (per -Force)
Restart-Computer -Force
