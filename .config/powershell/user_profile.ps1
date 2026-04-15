if (-not (Get-Command git -ErrorAction SilentlyContinue) -or -not $env:USERNAME) {
    $env:Path = [System.Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path','User')
    $env:USERNAME = [System.Environment]::UserName
    $env:USERDOMAIN = [System.Environment]::UserDomainName
}
# Not needed ATM, as we handle all the warnings or details via --no-logo flag when launching powershell
#Clear-Host
# winget install fastfetch
# Force Fastfetch to use YOUR config every time (bypass path confusion)
if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    fastfetch -c "$env:USERPROFILE\.config\fastfetch\config.jsonc"
}
$omp_config = Join-Path $PSScriptRoot ".\my theme.omp.json"
oh-my-posh init pwsh --config $omp_config | Invoke-Expression

Import-Module posh-git
Import-Module -Name Terminal-Icons
Import-Module PSFzf # Fzf

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Alias
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
function gcp {
    git cherry-pick @args
}
function gcps {
    git cherry-pick -s @args
}
function cb {
    git checkout @args
}
function gf {
    git fetch @args
}
function gp {
    git pull @args
}
function gco {
    git commit -s @args
}
function p {
    cd "$env:USERPROFILE\.config\powershell"
}
function d {
    cd "$env:USERPROFILE\Downloads"
}
function ro {
    cd 'E:\Git\Roms'
}
# Refresh environment from system OnDemand
function refresh {
    $env:Path = [System.Environment]::GetEnvironmentVariable('Path','Machine') + ';' + [System.Environment]::GetEnvironmentVariable('Path','User')
    Write-Host "PATH manually refreshed from Windows Registry." -ForegroundColor Green
}
function f {
    fastfetch @args
}

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}