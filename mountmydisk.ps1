$rd = Get-Disk | Where partitionstyle -eq ‘raw’
Initialize-Disk -Number $rd.number -PartitionStyle GPT
New-Partition -DiskNumber $rd.number -UseMaximumSize -DriveLetter z
Format-Volume -FileSystem NTFS -NewFileSystemLabel "disk 2" -DriveLetter Z
