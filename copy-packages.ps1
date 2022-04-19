$source = "$($env:USERPROFILE)\.nuget\packages"
$destination = "http://localhost:5555/v3/index.json"

nuget setapikey "pass" -Source $destination

$packages = nuget list -AllVersions -Source $source

$packages | % {
  $id, $version = $_ -Split " "
  $nupkg = $id + "." + $version + ".nupkg"
  $path = [IO.Path]::Combine($source, $id, $version, $nupkg)

  Write-Host "nuget.exe push -Source $destination ""$path"""
  & nuget.exe push -Source $destination $path
}
