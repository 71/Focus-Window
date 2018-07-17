param([string] [Parameter(Mandatory = $True)] $ApiKey)

New-Item .\Focus-Window -ItemType Directory
Copy-Item -Path Focus-Window.* -Destination Focus-Window

Publish-Module -Path .\Focus-Window -NuGetApiKey $ApiKey
Remove-Item .\Focus-Window -Recurse
