# windows_scheduler_task_scforceoption

This script is used to create a windows scheduler task to disable scforceoption once Windows Hello for Business has been registered, disabling less secure password methods. 

# modules
- create_wbfb_scforcetask.ps1 creates a task in windows scheduler (**Edit XML task path as needed**)
- whfb_scforceoption_triggeredTask.xml runs the powershell script to disable scforceoption, triggered by WFHB registration (**Edit the paths as needed**)
- scroceoption_enable.ps1 runs when the task is triggered, removes task from scheduler and write to windows logs
