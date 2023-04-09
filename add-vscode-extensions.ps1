$extensions =
# Jekyll tools
"neilding.language-liquid"
, "killalau.vscode-liquid-snippets"
# Docker , Microsoft Extension
, "ms-azuretools.vscode-docker"
# Remote Containers (Development)
, "ms-vscode-remote.vscode-remote-extensionpack"
# Git & GitHub extensions
, "GitHub.copilot"
, "GitHub.copilot-labs"
, "GitHub.vscode-pull-request-github"
, "GitHub.codespaces"
, "GitHub.remotehub"
, "henriqueBruno.github-repository-manager"
, "Serhioromano.vscode-gitflow"
, "mhutchie.git-graph"
, "donjayamanne.githistory"
, "eamodio.gitlens"
, "arturock.gitstash"
, "Stepsize.stepsize"
, "me-dutour-mathieu.vscode-github-actions"
, "sysoev.vscode-open-in-github"
# Docker Extensions
, "ms-azuretools.vscode-docker"
, "formulahendry.docker-explorer"
, "george3447.docker-run"
, "p1c2u.docker-compose"
, "TqrHsn.vscode-docker-registry-explorer"
, "sandipchitale.docker-dive"
# Themes
, "Equinusocio.vsc-community-material-theme"


$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"
$DeleteOthers = $true

foreach ($ext in $extensions) {
    If ($DeleteOthers -and $installed.Contains($ext)) {
        Write-Host $ext "This Extension will be deleted." -ForegroundColor Red
        Remove-Item -PATH "$env:USERPROFILE\.vscode\extensions" -exclude "ms-vscode.PowerShell" -and "ms-vscode.PowerShell-Preview" -Recurse -Force 
    }
    else {
        Write-Host "Installing" $ext "..." -ForegroundColor White
        code --install-extension $ext
    }
}



