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
