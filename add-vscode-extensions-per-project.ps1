<#------------------------------------------------------------------------#>
<#  Add Extensions only for
    =======================:
    1): Python
    2): PostgreSQL 
    3): Docker
    4): Remote Development
    5): Git & GitHub
    6): PDF
    7): AsciiDoc
    8): Markdown
    9): Theme (Cobalt2)

--------------------------------------------------------------------------#>
<#------------------------------------------------------------------------#>
# Script for batch installing Visual Studio Code extensions
# Specify extensions to be checked & installed by modifying $extensions

$extensions =
# PowerShell Recommendation
"ms-vscode.PowerShell"
, "ironmansoftware.powershellprotools"
, "justin-grote.powershell-extension-pack"
, "ms-vscode.PowerShell"
, "ms-vscode.PowerShell-Preview"
# Remote SSH & Development
, "ms-vscode-remote.remote-ssh"
, "ms-vscode.remote-explorer"
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
# GitHub Gist Explorer
, "k9982874.github-gist-explorer"
, "gimenete.github-linker"
# GitHub Notification
, "fabiospampinato.vscode-github-notifications-bell"
# GitHub Folder
, "PeterHdd.github-folder"
# Open in GitHub Desktop
, "wraith13.open-in-github-desktop"
# GitHub Pull Request Monitor
, "erichbehrens.pull-request-monitor"
# Python
, "MikeShaker.python-essentials"
, "ms-python.python"
, "rohit-chouhan.sqlite-snippet"
# Preview on Web Server
, "yuichinukiyama.vscode-preview-server"
# Docker Extensions
, "ms-azuretools.vscode-docker"
, "formulahendry.docker-explorer"
, "george3447.docker-run"
, "p1c2u.docker-compose"
, "TqrHsn.vscode-docker-registry-explorer"
, "sandipchitale.docker-dive"
# PostgreSQL
, "ckolkman.vscode-postgres"
, "ms-ossdata.vscode-postgresql"
# Jekyll tools
, "neilding.language-liquid"
, "killalau.vscode-liquid-snippets"
# tool to save your settings as a gist
, "Shan.code-settings-sync"
# PDF
, "tomoki1207.pdf"
# AsciiDoc
, "asciidoctor.asciidoctor-vscode"
# Markdown
, "yzhang.markdown-all-in-one"
, "starkwang.markdown"
# Theme (Cobalt2)
, "wesbos.theme-cobalt2"

$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"

foreach ($ext in $extensions) {
    if ($installed.Contains($ext)) {
        Write-Host $ext "already installed." -ForegroundColor White -BackgroundColor Blue
    }
    else {
        Write-Host "Installing" $ext "..." -ForegroundColor White -BackgroundColor Red
        code --install-extension $ext --force
    }
}



