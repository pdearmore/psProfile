
<#
.SYNOPSIS
   Quickly set verbose preference.
.DESCRIPTION
   This is a quick command that can be aliased to set verbose preference.
#>

$nppFolder = "${env:ProgramFiles(x86)}\Notepad++"
if ((Test-Path "$nppFolder") -eq $True)
{
	Write-Verbose "Setting npp alias to $nppFolder\notepad++.exe"
	Set-Alias npp "$nppFolder\notepad++.exe"
}
else
{
	Write-Warning "$nppFolder didn't exist, so we couldn't set the npp alias."
}

Write-Verbose "Setting vpc alias to `$VerbosePreference = 'Continue'"
Set-Alias vpc Set-VerbosePreferenceContinue -Scope "Global"
Write-Verbose "Setting vpsc alias to `$VerbosePreference = 'SilentlyContinue'"
Set-Alias vpsc Set-VerbosePreferenceSilentlyContinue -Scope "Global"

Write-Verbose "Setting dpc alias to `$DebugPreference = 'Continue'"
Set-Alias dpc Set-DebugPreferenceContinue -Scope "Global"
Write-Verbose "Setting dpsc alias to `$DebugPreference = 'SilentlyContinue'"
Set-Alias dpsc Set-DebugPreferenceSilentlyContinue -Scope "Global"


