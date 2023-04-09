<#
    After Uninstalling all <not basic> extensions from location:
    C:\Users\Bahaa\.vscode\extensions
    Restart VSCode to refresh it. 
#>
Remove-Item -PATH "$env:USERPROFILE\.vscode\extensions" -exclude "ms-vscode.PowerShell,ms-vscode.PowerShell-Preview" -Recurse -Force 

Remove-Item -PATH "$env:USE\.vscode\extensions" -exclude "ms-vscode.PowerShell,ms-vscode.PowerShell-Preview" -Recurse -Force 
