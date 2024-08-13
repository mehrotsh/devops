Get-ChildItem -Path "C:\Your\Directory\Path" | 
    Sort-Object -Property LastWriteTime | 
    Where-Object { $_.Name -match "Pattern1|Pattern2|Pattern3" }
