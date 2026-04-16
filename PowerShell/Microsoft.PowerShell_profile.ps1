# 1. Start the timer immediately at the top
$global:ProfileTimer = [System.Diagnostics.Stopwatch]::StartNew()
. $env:USERPROFILE\.config\powershell\user_profile.ps1
# 2. Stop timer and print result at the bottom
$global:ProfileTimer.Stop()
Write-Host "$($global:ProfileTimer.ElapsedMilliseconds)ms" -ForegroundColor DarkGray