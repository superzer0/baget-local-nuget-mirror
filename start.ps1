docker run --rm --name nuget-server -p 5555:80 -d --env-file baget.env -v "$($PSScriptRoot)\baget-data:/var/baget" loicsharma/baget:latest
Write-Host "BaGet is running as nuget-server at localhost:5555"
