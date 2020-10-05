Get-Disk |Where partitionstyle -eq ‘raw’ |Initialize-Disk -PartitionStyle MBR
