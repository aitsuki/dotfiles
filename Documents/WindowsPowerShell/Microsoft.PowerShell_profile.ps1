oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/robbyrussel.omp.json' | Invoke-Expression
New-Alias -Name open -Value explorer
New-Alias -Name vi -Value nvim
New-Alias -Name vim -Value nvim

$Env:KOMOREBI_CONFIG_HOME = "$Env:UserProfile\.config\komorebi"

function startx {
	komorebic.exe start
}

function stopx {
	komorebic.exe stop
}

function startbar {
	Start-Process python yasb/src/main.py -WindowStyle hidden
}

function stopbar {
	kill $(ps python3.10)
}
