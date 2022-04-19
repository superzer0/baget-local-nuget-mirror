# Use windows dotnet cache for docker builds

BaGet configuration for local mirroring of Nuget packages.  
More at: <https://loic-sharma.github.io/BaGet/>

Sources: <https://loic-sharma.github.io/BaGet/installation/docker/>

## Prerequisites

Install nuget commandline ;

```powershell
choco install nuget.commandline
```

## Running

Run ```start.ps1``` to run BaGet server on localhost:5555.  
Run ```copy-packages.ps1``` which will upload all your cached libs to local nuget server.  

Next time just run the copy script in case some packages are missing.  
By default new pacakges will be mirror-cached for nuget.org only (not for private repositoreis)

## Using

Just add an additional package source to the ```nuget.config``` file

```powershell
 <add key="baget_local" value="http://localhost:5000/v3/index.json" protocolVersion="3" />
```

