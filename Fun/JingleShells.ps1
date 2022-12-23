<#    _ _           _               _   
   __| (_) ___  ___| | ___ __   ___| |_ 
  / _` | |/ _ \/ __| |/ / '_ \ / _ \ __|
 | (_| | |  __/ (__|   <| | | |  __/ |_ 
  \__,_|_|\___|\___|_|\_\_| |_|\___|\__|
         PowerShell Quick Tipp

JingleShells.ps1
Spielt Jingle Bells per PowerShell ab. Dafür wird der Befehl [Console]::Beep() verwendet.
Der Befehl erzeugt Töne mit dem internen PC-Lautsprecher (falls vorhanden) -  ansonsten
per Soundkarte.

Getestet mit Windows PowerShell 5.1 auf Windows 11.
Das Original-Skript stammt von Marcel Ortiz: https://devblogs.microsoft.com/powershell/jingle/
Ich habe das hier aber im folgenden ein wenig neu formatiert und kommentiert.

Demo dazu im folgenden Video: https://youtube.com/shorts/kGwsjKNxuPI
#>

# per @"..."@ kann ein String erzeugt werden, der sich über mehrere Zeilen erstreckt.
# Jede Zeichenfolge stellt hier eine Note inklusive der Länge dar.
$notes = @"
  4A4 4A4 2A4 4A4 4A4 2A4 4A4 4C4 4F3 8G3 1A4 4Bb4 4Bb4 4Bb4 8Bb4 4Bb4 4A4 4A4 8A4 8A4 
  4A4 4G3 4G3 4A4 2G3 2C4 4A4 4A4 2A4 4A4 4A4 2A4 4A4 4C4 4F3 4G3 1A4 4Bb4 4Bb4 4Bb4 4Bb4 
  4Bb4 4A4 4A4 8A4 8A4 4C4 4C4 4Bb4 4G3 1F3 4C3 4A4 4G3 4F3 2C3 8C3 8C3 4C3 4A4 4G3 4F3 
  1D3 4D3 4Bb4 4A4 4G3 1E3 4C4 4C4 4Bb4 4G3 1A4 4C3 4A4 4G3 4F3 1C3 4C3 4A4 4G3 4F3 1D3 
  4D3 4Bb3 4A4 4G3 4C4 4C4 4C4 8C4 8C4 4D4 4C4 4Bb4 4G3 4F3 2C4 4A4 4A4 2A4 4A4 4A4 2A4 
  4A4 4C4 4C3 8G3 1A4 4Bb4 4Bb4 4Bb4 8Bb4 4Bb4 4A4 4A4 8A4 8A4 4A4 4G3 4G3 4A4 2G3 2C4 
  4A4 4A4 2A4 4A4 4A4 2A4 4A4 4C4 4F3 8G3 1A4 4Bb4 4Bb4 4Bb4 4Bb4 4Bb4 4A4 4A4 8A4 8A4 
  4C4 4C4 4Bb4 4G3 1F3
"@ -replace "`r`n" -replace "  " -split " " # Entfernt Zeilenumbrüche und Leerzeichen, erstellt ein Array

# Die Play Funktion ruft einfach den Befehl [Console]::Beep() auf.
function Play([int] $freq, [int] $duration) {
    [System.Console]::Beep($freq, $duration);
}

# Jede Note wird definiert per mathematischer Formel
$f0 = 440;
$a = [math]::pow(2,(1/12)); # Zwölfte Wurzel von 2
function GetNoteFreq([string]$note) {
    $note -match "([A-G#]{1,2})(\d+)" | out-null
    $octave = ([int] $matches[2]) – 4;
    $n = $octave * 12 + ( GetHalfStepsFromA $matches[1] );
    $freq = $f0 * [math]::Pow($a, $n);
    return $freq;
}

# Einfache Rückgabe per Switch Anweisung:
# Es wird für jede Note die passende Frequenz zurückgegeben
function GetHalfStepsFromA([string] $note) {
    switch($note) {
        "A"  { 0 }
        "A#" { 1 }
        "Bb" { 1 }
        "B"  { 2 }
        "C"  { 3 }
        "C#" { 4 } 
        "Db" { 4 }
        "D"  { 5 }
        "D#" { 6 }
        "Eb" { 6 }
        "E"  { 7 }
        "F"  { 8 }
        "F#" { 9 }
        "Gb" { 9 }
        "G"  { 10 }
        "G#" { 11 }
        "Ab" { 11 }
    }
}

# Standardmäßig wird jede Note 1000 Millisekunden lang gespielt. 
# Ausgehend von diesem Wert wird die Länge der Note berechnet.
$StandardDuration = 1000;
foreach($note in $notes) {
    # Ausgabe der Regular-Expression Prüfung unterdrücken per Zuweisung in $null
    # Die Regular Expression matched jeweils auf eine Ziffer plus beliebige Textzeichen
    # Das Ergebnis wird in zwei Match Gruppen festgehalten auf die dann zugegriffen 
    # werden kann per $matches[1] und $matches[2]
    # Die $matches Variable wird automatisch erzeugt und wird deshalb nicht
    # sichtbar im Code zugewiesen.
    $null = $note -match "(\d)(.+)"
    # Die Dauer berechnen mit der die Note abgespielt wird:
    # 1000ms geteilt durch die Prefix-Zahl
    $duration = $StandardDuration / ([int] $matches[1])
    # Die eigentliche Note wird hier zwischengespeichert:
    $playNote = $matches[2]
    # Die Frequenz für die aktuelle Note wird per Funktion abgerufen
    $freq = GetNoteFreq $playNote
    # Ausgabe der Note als Text
    Write-Host $playNote
    # Abspielen der Note per Hilfsfunktion
    Play -freq $freq -duration $duration
    # 50ms warten, danach nächste Schleifenausführung
    Start-Sleep -Milliseconds 50
}
