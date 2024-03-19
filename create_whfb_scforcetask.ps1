# Define the name of the task and the path to the XML definition
$taskName = "WHfB_scforce"
$xmlPath = "C:\scripts\whfb_scforcetion_triggeredTask.xml"

# Import the task from the XML definition
Invoke-Expression -Command "schtasks /create /XML `"$xmlPath`" /tn `"$taskName`""

# Provide feedback upon successful task creation
Write-Host "Scheduled task $taskName created successfully."
