Set-executionpolicy Bypass -Scope Process -Force
if(![System.Diagnostics.EventLog]::SourceExists("WHfB_scforce")){
    New-EventLog -LogName Application -Source "WHfB_scforce"
}
try {
    # Enable scforceoption
    Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'scforceoption' -Value "1"
    # Log success
    Write-EventLog -LogName Application -Source "WHfB_scforce" -EventId 1001 -Message "scforceoption enabled successfully."
	} catch {
    # Log failure
    Write-EventLog -LogName Application -Source "WHfB_scforce" -EventId 1002 -Message "Failed to enable scforceoption: $_"
	}
   
  # Disable the scheduled task after scforceoption is enabled
  Unregister-ScheduledTask -TaskName "WHfB_scforce" -Confirm:$false
