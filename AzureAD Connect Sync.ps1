Import-Module –Name "C:\Program Files\Microsoft Azure AD Sync\Bin\ADSync" -Verbose

#For a Delta Sync:
Start-ADSyncSyncCycle -PolicyType Delta

#For a Full Sync (only necessary in some situations):
Start-ADSyncSyncCycle -PolicyType Initial

#Review the current intervals AzureAD Connect uses to sync 
Get-ADSyncScheduler

#The report should show intervals of 30 minute syncs and a sync policy type of Delta. 
#A sync policy type of Initial is usually shown after AzureAD Connect's initial sync but can also be forced by using "Start-ADSyncSyncCycle -PolicyType Initial"

