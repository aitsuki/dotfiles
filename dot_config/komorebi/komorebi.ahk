#SingleInstance Force

; You can generate a fresh version of this file with "komorebic ahk-library"
#Include %A_ScriptDir%\komorebic.lib.ahk
; https://github.com/LGUG2Z/komorebi/#generating-common-application-specific-configurations
#Include %A_ScriptDir%\komorebi.generated.ahk

; Default to minimizing windows when switching workspaces
WindowHidingBehaviour("minimize")

; Set cross-monitor move behaviour to insert instead of swap
CrossMonitorMoveBehaviour("insert")

; Enable hot reloading of changes to this file
WatchConfiguration("enable")

; Ensure there is 5 workspace created on monitor 0
EnsureWorkspaces(0, 5)

; Configure the invisible border dimensions
InvisibleBorders(7, 0, 14, 7)

; Configure the monitors
WorkspaceName(0, 0, "1")
WorkspaceName(0, 1, "2")
WorkspaceName(0, 2, "3")
WorkspaceName(0, 3, "4")
WorkspaceName(0, 4, "5")

; Others
ResizeDelta("50")

; Uncomment the next two lines if you want a visual border drawn around the focused window
; ActiveWindowBorder("enable")
; ActiveWindowBorderColour("66", "165", "245", "single") ; this is a nice blue colour

; Allow komorebi to start managing windows
CompleteConfiguration()

; Close focused windows
!q::
Send !{F4}
return

; Promote the focused window
!p::
Promote()
return

; Resize the focused window, Alt -= resize horizontal, Alt _+ resize vertical
!-::
ResizeAxis("horizontal", "decrease")
return

!=::
ResizeAxis("horizontal", "increase")
return

!+-::
ResizeAxis("vertical", "decrease")
return

!+=::
ResizeAxis("vertical", "increase")
return


; Change the focused window, Alt + Vim direction keys (HJKL)
!h::
Focus("left")
return

!j::
Focus("down")
return

!k::
Focus("up")
return

!l::
Focus("right")
return

; Move the focused window in a given direction, Alt + Shift + Vim direction keys (HJKL)
!+h::
Move("left")
return

!+j::
Move("down")
return

!+k::
Move("up")
return

!+l::
Move("right")
return

; Change the focuse workspace
!1::
FocusWorkSpace("0")
return

!2::
FocusWorkSpace("1")
return

!3::
FocusWorkSpace("2")
return

!4::
FocusWorkSpace("3")
return

!5::
FocusWorkSpace("4")
return

; Move the focused window to target workspase
!+1::
SendToWorkSpace("0")
return

!+2::
SendToWorkSpace("1")
return

!+3::
SendToWorkSpace("2")
return

!+4::
SendToWorkSpace("3")
return

!+5::
SendToWorkSpace("4")
return

; Change the focuse monitor
!,::
FocusMonitor("0")
return

!.::
FocusMonitor("1")
return

; Send the focused window to the target monitor
!+,::
SendToMonitor("0")
return 

!+.::
SendToMonitor("1")
return 

; There are many more commands that you can bind to whatever keys combinations you want!
;
; Have a look at the komorebic.lib.ahk file to see which arguments are required by different commands
;
; If you want more information about a command, you can run every komorebic command with "--help"
;
; For example, if you see this in komorebic.lib.ahk
;
; WorkspaceLayout(monitor, workspace, value) {
;    Run, komorebic.exe workspace-layout %monitor% %workspace% %value%, , Hide
; }
;
; Just run "komorebic.exe workspace-layout --help" and you'll get all the information you need to use the command
;
; komorebic.exe-workspace-layout
; Set the layout for the specified workspace
;
; USAGE:
;    komorebic.exe workspace-layout <MONITOR> <WORKSPACE> <VALUE>
;
; ARGS:
;    <MONITOR>      Monitor index (zero-indexed)
;    <WORKSPACE>    Workspace index on the specified monitor (zero-indexed)
;    <VALUE>        [possible values: bsp, columns, rows, vertical-stack, horizontal-stack, ultrawide-vertical-stack]
;
; OPTIONS:
;    -h, --help    Print help information
