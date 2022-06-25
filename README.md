# Powershell-Aliases-Scripts
A collection of Powershell Scripts and aliases i've made to simplify some everyday actions


## aliases.ps1
  Aliases 'bashifying' some powershell modules
## ha.ps1
  A Function to familiarize a otherwise tedious binary
## nano.ps1
 Same
## out-notepad.ps1
  A function giving you the ability to send stdout to Notepad
## PowershellProfile.ps1
  The 
  ```powershell 
  $PROFILE
  ``` 
  i've set this up with
## sshserver.ps1
## sshvm.ps1


# Setup
* clone this repo.
* 
* Open up Powershell and type
```powershell
cd Powershell-Aliases-Scripts
mkdir C:\PS_Scripts; Copy-Item .\ C:\PS_Scripts\ -Recurse -Exclude PowershellProfile.ps1
Get-Content PowershellProfile.ps1 | Set-Clipboard; Remove-Item PowershellProfile.ps1

notepad $PROFILE
```
* Press CTRL+V, CTRL+S and then you're Done!
### Important
Make sure PowershellProfile.ps1 is not put in C:\PS_Scripts, as this will cause a recursion.
