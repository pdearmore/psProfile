Function Set-VerbosePreferenceContinue
{
	begin {}
	process {
		$global:VerbosePreference = 'Continue'
	}
}