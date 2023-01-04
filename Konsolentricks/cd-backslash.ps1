<#    _ _           _               _   
   __| (_) ___  ___| | ___ __   ___| |_ 
  / _` | |/ _ \/ __| |/ / '_ \ / _ \ __|
 | (_| | |  __/ (__|   <| | | |  __/ |_ 
  \__,_|_|\___|\___|_|\_\_| |_|\___|\__|
         PowerShell Quick Tipp

cd-backslash.ps1

Mit cd \ könnt ihr direkt in den Root-Ordner wechseln. 
Das ist besonders nützlich, wenn ihr euch in einem Ordner befindet, der sehr viele Unterordner hat. 

Demo dazu im folgenden Video: https://youtube.com/shorts/PUkhLl4zM0w
#>

# so landet ihr direkt im Wurzelverzeichnis (Root-Folder) eures Laufwerks:
cd \

# noch schneller geht es ohne Leerzeichen:
cd\

# Hinweis
# cd ist übrigens ein Alias auf Set-Location, aber wenn ihr das verwendet ist es nicht mehr so cool & kurz:
Set-Location \