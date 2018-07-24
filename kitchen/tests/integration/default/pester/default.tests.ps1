describe "sumologic collector install/reinstall ansible role" {
    $Services = @(
        'sumo-collector'
	)
	
    Context "windows features" {
		$x = Get-Service
        ForEach ($f in $Services)
        {
            it "$($f) feature is installed" {
            $x | Where-Object { $_.Name -eq $f } | Should Be $true
            }
        }
	}
	
	Context 'Server Check'{
		Foreach($Service in $Services){
			$itParams = @{
				name = "$Service should be running"
			}
			$itParams.test = { (Get-Service -Name $Service).Status | Should Be 'Running' }
			it @itParams
		}
	}
}
