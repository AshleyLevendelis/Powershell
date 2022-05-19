Param (
    [String]$Path
    )

$ContainsTextFiles = $(Test-Path -Path $Path\*.txt -PathType Leaf)
$ContainsMP3Files = $(Test-Path -Path $Path\*mp3 -PathType Leaf)
$ContainsJPGFiles = $(Test-Path -Path $Path\*.jpg -PathType Leaf)
$ContainsMP4Files = $(Test-Path -Path $Path\*mp4 -PathType Leaf)


if ($ContainsTextFiles -eq $True) { 
        Move-Item -Path $Path\*.txt -Destination C:\Users\Ashley\OneDrive\Documents\PowerShell\Project\Documents\
        Write-Host "All .txt files have been succesfully moved to .\Documents"
    }Else{
        Write-Error "No .txt files exist"
    }

if ($ContainsMP3Files -eq $True) {
        Move-Item -Path $Path\*.mp3 -Destination C:\Users\Ashley\OneDrive\Documents\PowerShell\Project\Music\
        Write-Host "All .mp3 files have been succesfully moved to .\Music"
    }Else{
        Write-Error "No .mp3 files exist"
    }

if ($ContainsJPGFiles -eq $True) {
        Move-Item -Path $Path\*.jpg -Destination C:\Users\Ashley\OneDrive\Documents\PowerShell\Project\Pictures\
        Write-Host "All .jpg files have been succesfully moved to .\Pictures"
    }Else{
        Write-Error "No .jpg files exist"
    }

if ($ContainsMP4Files -eq $True) {
        Move-Item -Path $Path\*.mp4 -Destination C:\Users\Ashley\OneDrive\Documents\PowerShell\Project\Videos\
        Write-Host "All .mp4 files have been succesfully moved to .\Videos"
    }Else{
        Write-Error "No .mp4 files exist"
    }
    Testing