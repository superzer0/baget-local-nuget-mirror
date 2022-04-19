docker compose -f .\docker-compose.yaml up --detach --no-recreate --no-build --quiet-pull --wait
Write-Host "BaGet is running as nuget-server at localhost:5555"
