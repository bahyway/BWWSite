<#
    After Uninstalling all <not basic> extensions from location:
    C:\Users\Bahaa\.vscode\extensions
    Restart VSCode to refresh it. 
#>
$Exceude = "ms-vscode.PowerShell
,ironmansoftware.powershellprotools
,justin-grote.powershell-extension-pack
,ms-vscode.PowerShell
,ms-vscode.PowerShell-Preview"
$VUserprofile = "$env:USERPROFILE\.vscode\extensions"
$VUser = "$env:USER\.vscode\extensions"
Remove-Item -PATH $VUserprofile -exclude $Exceude -Recurse -Force 

Remove-Item -PATH $VUser -exclude $Exceude -Recurse -Force 
