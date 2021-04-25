# DisableCortana
Lately, it seems like quite a few people are trying to figure out ways to remove/disable Cortana on their machines. This Powershell script allows one to do exactly that by disabling it directly in the registry or by removing the Cortana Appx package from their system entirely.

This script can be used on the command line in the following way.

* Carry out all of the below measures on the system.
```Powershell
.\DisableCortana.ps1 -All
```

* Disable Cortana in the registry.
```Powershell
.\DisableCortana.ps1 -DisableInRegistry
```

* Remove the Cortana Appx package from the system.
```Powershell
.\DisableCortana.ps1 -RemovePackage
```
