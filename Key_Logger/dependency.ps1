python -c "import pynput"2>$null
if($LASTEXITCODE -ne 0){
    Write-Host "Dependency 'pynput' not installed !"
    $choice =Read-Host "Do you want to install pynput now ? (Y/N)"

    if($choice -eq "Y" -or $choice -eq "y"){
        Write-Host "Installing pynput..."
        python -m pip install pynput
    } else {
        Write-host "cannot proceed without pynput.Exiting"
        exit
    }
} else {
    Write-Host "pynput already installed ('_')"
}