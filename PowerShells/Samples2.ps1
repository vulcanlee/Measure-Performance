$counters = @(
   '\PhysicalDisk(**)\% Idle Time'*
   '\PhysicalDisk(**)\Avg. Disk sec/Read'*
   '\*PhysicalDisk(**)\Avg. Disk sec/Write'
   '\PhysicalDisk(**)\Current Disk Queue Length'*
   '\*Memory\Available Bytes'*
   '\*Memory\Pages/sec'*
   '\*Network Interface(**)\Bytes Total/sec'
   '\Network Interface(**)\Output Queue Length'*
   '\*Paging File(**)\% Usage'
 )
 
 foreach ($counter in $counters) {
   (Get-Counter -Counter $counter).CounterSamples
 }