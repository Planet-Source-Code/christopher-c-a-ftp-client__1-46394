VERSION 5.00
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form frmFTP 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "FTP"
   ClientHeight    =   7110
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10065
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7110
   ScaleWidth      =   10065
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame fraStatus 
      Caption         =   "Status"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   780
      Left            =   45
      TabIndex        =   23
      Top             =   3465
      Width           =   3210
      Begin VB.Label lblStatus 
         Alignment       =   2  'Center
         Caption         =   "Not Connected"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   240
         Left            =   270
         TabIndex        =   24
         ToolTipText     =   "Connection Status"
         Top             =   315
         Width           =   2670
      End
   End
   Begin InetCtlsObjects.Inet ITC 
      Left            =   2610
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.Frame fraControls 
      Caption         =   "Controls"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   780
      Left            =   3375
      TabIndex        =   20
      Top             =   3465
      Width           =   6630
      Begin VB.Label lblReceiveFile 
         AutoSize        =   -1  'True
         Caption         =   "Receive File"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   2205
         TabIndex        =   22
         Top             =   360
         Width           =   1080
      End
      Begin VB.Image imgReceiveFile 
         Enabled         =   0   'False
         Height          =   345
         Left            =   1665
         Picture         =   "frmFTP.frx":0000
         Stretch         =   -1  'True
         ToolTipText     =   "Recieve Selected File"
         Top             =   270
         Width           =   390
      End
      Begin VB.Label lblSendFile 
         AutoSize        =   -1  'True
         Caption         =   "Send File"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   675
         TabIndex        =   21
         Top             =   360
         Width           =   810
      End
      Begin VB.Image imgSendFile 
         Enabled         =   0   'False
         Height          =   345
         Left            =   135
         Picture         =   "frmFTP.frx":0442
         Stretch         =   -1  'True
         ToolTipText     =   "Send Selected File"
         Top             =   270
         Width           =   390
      End
   End
   Begin VB.Frame fraRemoteFiles 
      Caption         =   "Remote Files"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3300
      Left            =   3375
      TabIndex        =   19
      Top             =   45
      Width           =   6630
      Begin VB.CommandButton cmdNewFolder 
         Enabled         =   0   'False
         Height          =   330
         Left            =   1620
         Picture         =   "frmFTP.frx":0884
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "New Folder"
         Top             =   315
         Width           =   420
      End
      Begin VB.CommandButton cmdUpFolder 
         Enabled         =   0   'False
         Height          =   330
         Left            =   2115
         Picture         =   "frmFTP.frx":3026
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Move Up One Folder"
         Top             =   315
         Width           =   420
      End
      Begin VB.CommandButton cmdDelete 
         Enabled         =   0   'False
         Height          =   330
         Left            =   1125
         Picture         =   "frmFTP.frx":3170
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Delete"
         Top             =   315
         Width           =   420
      End
      Begin VB.CommandButton cmdSize 
         Caption         =   "S"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   320
         Left            =   135
         TabIndex        =   5
         ToolTipText     =   "Get File Size"
         Top             =   315
         Width           =   420
      End
      Begin VB.CommandButton cmdRename 
         Caption         =   "R"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   320
         Left            =   630
         TabIndex        =   6
         ToolTipText     =   "Rename File"
         Top             =   315
         Width           =   420
      End
      Begin VB.ListBox lstRemoteFile 
         Enabled         =   0   'False
         Height          =   2400
         Left            =   90
         TabIndex        =   10
         ToolTipText     =   "Remote Files"
         Top             =   720
         Width           =   6450
      End
   End
   Begin VB.Frame fraLocalFiles 
      Caption         =   "Local Files"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2670
      Left            =   45
      TabIndex        =   18
      Top             =   4365
      Width           =   9960
      Begin VB.FileListBox filLocalFile 
         Height          =   2235
         Left            =   4590
         TabIndex        =   13
         ToolTipText     =   "Local Files"
         Top             =   270
         Width           =   5190
      End
      Begin VB.DirListBox dirLocalDir 
         Height          =   1665
         Left            =   135
         TabIndex        =   12
         ToolTipText     =   "Local Directory"
         Top             =   720
         Width           =   4335
      End
      Begin VB.DriveListBox drvLocalDrive 
         Height          =   315
         Left            =   135
         TabIndex        =   11
         ToolTipText     =   "Local Drive List"
         Top             =   270
         Width           =   2040
      End
   End
   Begin VB.Frame fraLoginInfo 
      Caption         =   "Login Options"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3300
      Left            =   45
      TabIndex        =   14
      Top             =   45
      Width           =   3210
      Begin VB.CommandButton cmdLogOff 
         Caption         =   "Log Off"
         Enabled         =   0   'False
         Height          =   420
         Left            =   1665
         TabIndex        =   4
         ToolTipText     =   "Log Off"
         Top             =   2475
         Width           =   1320
      End
      Begin VB.CommandButton cmdLogOn 
         Caption         =   "Log On"
         Height          =   420
         Left            =   180
         TabIndex        =   3
         ToolTipText     =   "Log On"
         Top             =   2475
         Width           =   1320
      End
      Begin VB.TextBox txtPassword 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   180
         PasswordChar    =   "*"
         TabIndex        =   2
         ToolTipText     =   "Password"
         Top             =   2025
         Width           =   2805
      End
      Begin VB.TextBox txtUserName 
         Height          =   285
         Left            =   180
         TabIndex        =   1
         ToolTipText     =   "User Name"
         Top             =   1395
         Width           =   2805
      End
      Begin VB.TextBox txtServer 
         Height          =   285
         Left            =   180
         TabIndex        =   0
         ToolTipText     =   "FTP Server Name"
         Top             =   765
         Width           =   2805
      End
      Begin VB.Label lblPassword 
         AutoSize        =   -1  'True
         Caption         =   "Password:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   180
         TabIndex        =   17
         Top             =   1755
         Width           =   885
      End
      Begin VB.Label lblUserName 
         AutoSize        =   -1  'True
         Caption         =   "User Name:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   180
         TabIndex        =   16
         Top             =   1125
         Width           =   1005
      End
      Begin VB.Label lblServer 
         AutoSize        =   -1  'True
         Caption         =   "Server:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   180
         TabIndex        =   15
         Top             =   495
         Width           =   630
      End
   End
End
Attribute VB_Name = "frmFTP"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim RecievingSize As Boolean

Private Function ITCReady(ShowMessage As Boolean)
'Check the state of itc, if it is not executing return true
If ITC.StillExecuting Then
    ITCReady = False
    If ShowMessage Then
        MsgBox "Please wait.  FTP is still executing", vbInformation + vbOKOnly, "Busy"
    End If
Else
    ITCReady = True
End If
End Function

Private Sub cmdDelete_Click()
'If the itc is ready, ask user if they want to delete it, if so then delete
If ITCReady(True) Then
    If MsgBox("Delete " & lstRemoteFile.Text & " ?", vbQuestion + vbOKCancel, "Delete") = vbOK Then
        If Right(lstRemoteFile.Text, 1) <> "/" Then
            ITC.Execute , "DELETE " & Chr(34) & lstRemoteFile.Text & Chr(34)
        Else
            ITC.Execute , "RMDIR " & Chr(34) & lstRemoteFile.Text & Chr(34)
        End If
        
        Do Until ITCReady(False)
            DoEvents: DoEvents: DoEvents: DoEvents
        Loop
        lstRemoteFile.Clear
        ITC.Execute , "DIR"
        lblStatus = "Connected"
    End If
End If
End Sub

Private Sub cmdLogOff_Click()
'Clear the list of remote files and log off
lstRemoteFile.Clear
ITC.Cancel

Do Until ITCReady(False)
    DoEvents: DoEvents: DoEvents: DoEvents
Loop

lblStatus = "Closing Connection"

If ITCReady(False) Then
    ITC.Execute , "CLOSE"
Else
    ITC.Cancel
End If
lblStatus = "Not Connected"
cmdLogOn.Enabled = False
cmdNewFolder.Enabled = False
cmdDelete.Enabled = False
cmdRename.Enabled = False
cmdSize.Enabled = False
cmdUpFolder.Enabled = False
imgSendFile.Enabled = False
imgReceiveFile.Enabled = False
lstRemoteFile.Enabled = False
cmdLogOff.Enabled = False
cmdLogOn.Enabled = True
End Sub

Private Sub cmdLogOn_Click()
On Error GoTo LogOnError

'If no server or password is specified exit the sub
If txtServer = "" Or txtPassword = "" Then
    MsgBox "You must specify a server and password.", vbInformation + vbOKOnly, "LogOn Failure"
    Exit Sub
End If

'Set status label
lblStatus = "Connecting"

'Set protocol and server
ITC.Protocol = icFTP
ITC.URL = txtServer

'If no username is entered default to anonymous
If txtUserName = "" Then
    ITC.UserName = "anonymous"
Else
    ITC.UserName = txtUserName
End If


ITC.Cancel
cmdLogOn.Enabled = False

'Set the password and connect
ITC.Password = txtPassword
ITC.RequestTimeout = 40
ITC.Execute , "DIR"
Do While ITC.StillExecuting
    DoEvents: DoEvents: DoEvents
Loop


'Set status label, disable the log on button, and enable the log off button
lblStatus = "Connected"
cmdLogOn.Enabled = False
cmdNewFolder.Enabled = True
cmdDelete.Enabled = True
cmdRename.Enabled = True
cmdSize.Enabled = True
cmdUpFolder.Enabled = True
imgSendFile.Enabled = True
imgReceiveFile.Enabled = True
lstRemoteFile.Enabled = True
cmdLogOff.Enabled = True

Exit Sub

LogOnError:
'If logon fails alert the user
MsgBox "Logon attempt failed", vbOKOnly + vbInformation, "LogOn Failure"
ITC.Cancel
lblStatus = "Not Connected"
cmdLogOn.Enabled = True
cmdNewFolder.Enabled = False
cmdDelete.Enabled = False
cmdRename.Enabled = False
cmdSize.Enabled = False
cmdUpFolder.Enabled = False
imgSendFile.Enabled = False
imgReceiveFile.Enabled = False
lstRemoteFile.Enabled = False
cmdLogOff.Enabled = False
End Sub





Private Sub cmdNewFolder_Click()
'If the itc is ready then check to make sure the folder doesn't already exist
Dim FolderName As String
If ITCReady(True) Then
    FolderName = InputBox("Enter new folder name", "New Folder")
    For i = 0 To lstRemoteFile.ListCount
        If FolderName & "/" = lstRemoteFile.List(i) Then
            MsgBox "Folder " & FolderName & " already exists.", vbInformation + vbOKOnly, "New Folder"
            Exit Sub
        End If
    Next i
    
    'Create the new folder then refresh the remote file list
    ITC.Execute , "MKDIR " & Chr(34) & FolderName & Chr(34)
    
    Do Until ITCReady(False)
        DoEvents: DoEvents: DoEvents: DoEvents
    Loop
    
    lstRemoteFile.Clear
    ITC.Execute , "DIR"
    lblStatus = "Connected"
End If
End Sub

Private Sub cmdRename_Click()
'Show inputbox to get new file name, then rename the file
Dim NewFileName As String
If ITCReady(True) Then
    NewFileName = InputBox("Enter new file name for " & lstRemoteFile.Text, "Rename")
    If Trim(NewFileName) = "" Then
        MsgBox "Invalid Name", vbInformation + vbOKOnly, "Rename"
    Else
        ITC.Execute , "RENAME " & Chr(34) & lstRemoteFile.Text & Chr(34) & " " & Chr(34) & NewFileName & Chr(34)
        Do Until ITCReady(False)
            DoEvents: DoEvents: DoEvents: DoEvents
        Loop
        lstRemoteFile.Clear
        ITC.Execute , "DIR"
        lblStatus = "Connected"
    End If
End If
End Sub

Private Sub cmdSize_Click()
'If the itc is ready then get the size
If ITCReady(True) Then
    RecievingSize = True
    ITC.Execute , "SIZE " & Chr(34) & lstRemoteFile.Text & Chr(34)
    Do Until ITCReady(False)
            DoEvents: DoEvents: DoEvents: DoEvents
    Loop
    lblStatus = "Connected"
    RecievingSize = False
End If
End Sub


Private Sub cmdUpFolder_Click()
'If the itc is ready then move up one directory and refresh the remote files list
If ITCReady(True) Then
    ITC.Execute , "CDUP"
    
    Do Until ITCReady(False)
        DoEvents: DoEvents: DoEvents: DoEvents
    Loop
    lstRemoteFile.Clear
    ITC.Execute , "DIR"
    lblStatus = "Connected"
    
End If
End Sub

Private Sub dirLocalDir_Change()
filLocalFile.Path = dirLocalDir.Path
End Sub

Private Sub drvLocalDrive_Change()
On Error GoTo DriveError
dirLocalDir.Path = drvLocalDrive.Drive

Exit Sub
DriveError:
MsgBox "Error accessing selected drive.", vbCritical + vbOKOnly, "Error"
Resume Next
End Sub

Private Sub Form_Load()
'Set RecievingSize to false because it must logon first
RecievingSize = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
'Cancel any tasks that the itc is doing
ITC.Cancel
End Sub



Private Sub imgReceiveFile_Click()
'If the ITC is not still executing then receive the file
If ITCReady(True) = True Then
    'Check that they are not recieving a folder
    If Right(lstRemoteFile.Text, 1) = "/" Then
        MsgBox lstRemoteFile.Text & " is a folder and cannot be sent.", vbCritical + vbOKOnly, "Error"
        Exit Sub
    End If
    
    'Check that the file does not already exist on the computer, if it does exit sub
    For i = 0 To filLocalFile.ListCount
        If lstRemoteFile.Text = filLocalFile.List(i) Then
            MsgBox "File " & lstRemoteFile.Text & " already exists.", vbInformation + vbOKOnly, "Recieve"
            Exit Sub
        End If
    Next i
    
    ITC.Execute , "GET " & Chr(34) & lstRemoteFile.Text & Chr(34) & " " & Chr(34) & filLocalFile.Path & "\" & lstRemoteFile.Text & Chr(34)
    Do Until ITCReady(False)
        DoEvents: DoEvents: DoEvents: DoEvents
    Loop
    filLocalFile.Refresh
    lblStatus = "Connected"
End If
End Sub



Private Sub imgSendFile_Click()
'If the ITC is not still executing then send the file
If ITCReady(True) = True Then
    'Check that a file has been selected
    If Trim(filLocalFile.FileName) = "" Then
        MsgBox "Please select a file to send.", vbCritical + vbOKOnly, "Error"
        Exit Sub
    End If
    
    'Check that the file does not already exist on the server
    For i = 0 To lstRemoteFile.ListCount
        If filLocalFile.FileName = lstRemoteFile.List(i) Then
            If MsgBox("File " & filLocalFile.FileName & " already exists." & vbCrLf & "Overwrite?", vbQuestion + vbYesNo, "Overwrite") = vbNo Then
                Exit Sub
            End If
        End If
    Next i
           
    'Send the file and update the remote file list box
    ITC.Execute , "PUT " & Chr(34) & filLocalFile.Path & "\" & filLocalFile.FileName & Chr(34) & " " & Chr(34) & filLocalFile.FileName & Chr(34)
    Do Until ITCReady(False)
        DoEvents: DoEvents: DoEvents: DoEvents
    Loop
    lstRemoteFile.Clear
    ITC.Execute , "DIR"
    lblStatus = "Connected"
End If
End Sub

Private Sub ITC_StateChanged(ByVal State As Integer)
'Check the state of the itc, and change the status accordingly
Dim Data1, RemoteFiles
Dim RemoteFileName As String

Select Case State
    Case icResolvingHost
        lblStatus = "Finding Host IP Address"
    Case icHostResolved
        lblStatus = "IP Address Found"
    Case icConnecting
        lblStatus = "Connecting To Host"
    Case icConnected
        lblStatus = "Connected"
    Case icRequesting
        lblStatus = "Sending Request"
    Case icRequestSent
        lblStatus = "Request Sent"
    Case icReceivingResponse
        lblStatus = "Receiving Response"
    Case icResponseReceived
        lblStatus = "Response Received"
    Case icDisconnecting
        lblStatus = "Disconnecting"
    Case icDisconnected
        lblStatus = "Not Connected"
    Case icError
        If ITC.ResponseCode = 12030 Then
            lblStatus = "Not Connected"
            cmdLogOn.Enabled = False
            cmdNewFolder.Enabled = False
            cmdDelete.Enabled = False
            cmdRename.Enabled = False
            cmdSize.Enabled = False
            cmdUpFolder.Enabled = False
            imgSendFile.Enabled = False
            imgReceiveFile.Enabled = False
            lstRemoteFile.Enabled = False
            cmdLogOff.Enabled = False
            cmdLogOn.Enabled = True
            ITC.Cancel
        End If
        If ITC.ResponseCode <> 87 Then
            MsgBox ITC.ResponseCode & " " & ITC.ResponseInfo, vbOKOnly + vbCritical, "Error"
        End If
    Case icResponseCompleted
        'loop until you get all data
        Do While True
            Data1 = ITC.GetChunk(4096, icString)
            If Len(Data1) = 0 Then Exit Do
            DoEvents
            RemoteFiles = RemoteFiles & Data1
        Loop
        
        Beep
        
        'If it is recieving size data tell the user the size and then exit the sub
        If RecievingSize Then
            MsgBox "The size of file " & lstRemoteFile.Text & " is " & RemoteFiles & " bytes", vbInformation + vbOKOnly, "Size"
            Exit Sub
        End If
        
        'Loop through, check for carriage returns to get each file name and add to listbox
        For i = 1 To Len(RemoteFiles)
            If Mid(RemoteFiles, i, 1) = Chr(13) Then
                If Trim(RemoteFileName) <> "" Then
                    lstRemoteFile.AddItem RemoteFileName
                    RemoteFileName = ""
                End If
            Else
                If Mid(RemoteFiles, i, 1) <> Chr(10) Then
                    RemoteFileName = RemoteFileName & Mid(RemoteFiles, i, 1)
                End If
            End If
        Next i
End Select

End Sub



Private Sub lstRemoteFile_DblClick()
'If the itc is ready, check that the selected is a folder and change the directory
If ITCReady(True) Then
    If Right(lstRemoteFile.Text, 1) = "/" Then
        ITC.Execute , "CD " & Chr(34) & lstRemoteFile.Text & Chr(34)
    Else
        Call imgReceiveFile_Click
        Exit Sub
    End If
    
    Do Until ITCReady(False)
        DoEvents: DoEvents: DoEvents: DoEvents
    Loop
    
    lstRemoteFile.Clear
    ITC.Execute , "DIR"
    lblStatus = "Connected"
End If
End Sub
