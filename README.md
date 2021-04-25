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

N.B. This script may require you to temporarily set your execution policy to "Bypass" in order to run it. This can be done with the following code. Note that all execution policy commands must be run in and administrator Powershell instance.
```Powershell
Set-ExecutionPolicy Bypass
```

You can then set the execution policy back to "Restricted" or "Remote Signed" with the following code.
```Powershell
Set-ExecutionPolicy Restricted
```

*or*

```Powershell
Set-ExecutionPolicy RemoteSigned
```
