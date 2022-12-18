Get-Counter -Counter '\Process(*vmms)\% Processor Time' -MaxSamples 5 | ForEach-Object {
    $_.CounterSamples | ForEach-Object {
        [pscustomobject]@{
            Time = $_.TimeStamp
            Path = $_.Path
            Value = $_.CookedValue
        }
    }
} | Export-Csv -Path 'vmmsproctime.csv' -NoTypeInformation