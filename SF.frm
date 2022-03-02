VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Spectral Forecast equation applied on signals (VB6)"
   ClientHeight    =   8040
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18630
   LinkTopic       =   "Form1"
   ScaleHeight     =   536
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1242
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      Caption         =   "Examples"
      Height          =   6975
      Left            =   120
      TabIndex        =   2
      Top             =   240
      Width           =   1455
      Begin VB.CheckBox del 
         Caption         =   "Erase "
         Height          =   255
         Left            =   240
         TabIndex        =   17
         Top             =   6480
         Value           =   1  'Checked
         Width           =   975
      End
      Begin VB.CheckBox SignalM 
         Caption         =   "Signal M"
         Height          =   255
         Left            =   240
         TabIndex        =   15
         Top             =   5640
         Value           =   1  'Checked
         Width           =   975
      End
      Begin VB.CheckBox SignalB 
         Caption         =   "Signal B"
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   6000
         Value           =   1  'Checked
         Width           =   975
      End
      Begin VB.CheckBox SignalA 
         Caption         =   "Signal A"
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   5280
         Value           =   1  'Checked
         Width           =   975
      End
      Begin VB.CommandButton cases 
         Caption         =   "case 8"
         Height          =   495
         Index           =   7
         Left            =   240
         TabIndex        =   10
         Top             =   4560
         Width           =   975
      End
      Begin VB.CommandButton cases 
         Caption         =   "case 7"
         Height          =   495
         Index           =   6
         Left            =   240
         TabIndex        =   9
         Top             =   3960
         Width           =   975
      End
      Begin VB.CommandButton cases 
         Caption         =   "case 6"
         Height          =   495
         Index           =   5
         Left            =   240
         TabIndex        =   8
         Top             =   3360
         Width           =   975
      End
      Begin VB.CommandButton cases 
         Caption         =   "case 5"
         Height          =   495
         Index           =   4
         Left            =   240
         TabIndex        =   7
         Top             =   2760
         Width           =   975
      End
      Begin VB.CommandButton cases 
         Caption         =   "case 4"
         Height          =   495
         Index           =   3
         Left            =   240
         TabIndex        =   6
         Top             =   2160
         Width           =   975
      End
      Begin VB.CommandButton cases 
         Caption         =   "case 1"
         Height          =   495
         Index           =   0
         Left            =   240
         TabIndex        =   5
         Top             =   360
         Width           =   975
      End
      Begin VB.CommandButton cases 
         Caption         =   "case 2"
         Height          =   495
         Index           =   1
         Left            =   240
         TabIndex        =   4
         Top             =   960
         Width           =   975
      End
      Begin VB.CommandButton cases 
         Caption         =   "case 3"
         Height          =   495
         Index           =   2
         Left            =   240
         TabIndex        =   3
         Top             =   1560
         Width           =   975
      End
   End
   Begin VB.VScrollBar dist 
      Height          =   5415
      Left            =   17640
      Max             =   100
      TabIndex        =   1
      Top             =   840
      Width           =   615
   End
   Begin VB.PictureBox graf_val 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   6495
      Left            =   1800
      ScaleHeight     =   431
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1023
      TabIndex        =   0
      Top             =   360
      Width           =   15375
      Begin VB.Label val_d 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   15
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   375
         Left            =   14400
         TabIndex        =   16
         Top             =   120
         Width           =   855
      End
   End
   Begin VB.Image Image1 
      Height          =   720
      Left            =   -6600
      Picture         =   "SF.frx":0000
      Top             =   7320
      Width           =   25290
   End
   Begin VB.Label LowerB 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   375
      Left            =   17400
      TabIndex        =   12
      Top             =   6600
      Width           =   1095
   End
   Begin VB.Label UpperB 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   375
      Left            =   17400
      TabIndex        =   11
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'############################################################################################################################## -->
'#  John Wiley & Sons, Inc.                                                                                                   # -->
'#                                                                                                                            # -->
'#  Book:   Algorithms in Bioinformatics: Theory and Implementation                                                           # -->
'#  Author: Dr. Paul A. Gagniuc                                                                                               # -->
'#                                                                                                                            # -->
'#  Institution:                                                                                                              # -->
'#    University Politehnica of Bucharest                                                                                     # -->
'#    Faculty of Engineering in Foreign Languages                                                                             # -->
'#    Department of Engineering in Foreign Languages                                                                          # -->
'#                                                                                                                            # -->
'#  Area:   European Union                                                                                                    # -->
'#  Date:   04/01/2021                                                                                                        # -->
'#                                                                                                                            # -->
'#  Mode:   Visual Basic 6.0                                                                                                  # -->
'#                                                                                                                            # -->
'#  Cite this work as:                                                                                                        # -->
'#    Paul A. Gagniuc. Algorithms in Bioinformatics: Theory and Implementation. John Wiley & Sons, 2021, ISBN: 9781119697961. # -->
'#                                                                                                                            # -->
'############################################################################################################################## -->

Dim A As String
Dim B As String
Dim mxg As Variant
Dim mng As Variant
Dim mxAB As Variant


Function SF(A, B, d) As String

    Dim tA() As String
    Dim tB() As String
    Dim M As String
    
    maxA = 0
    maxB = 0
    maxA = 0
    
    M = ""

    tA = Split(A, ",")
    tB = Split(B, ",")
    
    For i = 0 To UBound(tA)
        If (Val(tA(i)) > maxA) Then maxA = Val(tA(i))
        If (Val(tB(i)) > maxB) Then maxB = Val(tB(i))
        If (maxA > mxAB) Then mxAB = maxA
        If (maxB > mxAB) Then mxAB = maxB
    Next i
    
    For i = 0 To UBound(tA)
        v = ((d / maxA) * tA(i)) + (((mxAB - d) / maxB) * tB(i))
        M = M & Round(v, 2)
        If (i < UBound(tA)) Then M = M & ","
    Next i
    
    SF = M

End Function


Function chart(g, c, e)

    sig = Split(g, ",")
    
    mx = 0
    mn = 0
    
    For i = 0 To UBound(sig)
        If (Val(sig(i)) > mx) Then mx = Val(sig(i))
        If (Val(sig(i)) < mn) Then mn = Val(sig(i))
    Next i

    w = graf_val.ScaleWidth
    h = graf_val.ScaleHeight

    d = (w - 80) / (UBound(sig) - 1)
    
    If (e = "|") Then
    
        graf_val.Cls
        mxg = mx
        mng = mn
        
    End If
    
    graf_val.DrawWidth = 4
    
    For i = 0 To UBound(sig) - 1
    
        y = h - 15 - ((h - 15) / (mx - mn)) * (Val(sig(i)) - mn)
        x = d * i

        If (i = 0) Then
            oldX = x
            oldY = y
        End If
        
        graf_val.Line (oldX, oldY)-(x, y), c
        
        oldX = x
        oldY = y
        
    Next i
 
End Function


Private Sub dist_Scroll()

    M = SF(A, B, dist.Value)
    
    Call draw_scale(UBound(Split(A, ",")) - 1)

    k = "|"
    
    'if(document.getElementById("erase").checked) {era='n';}
    
    If (del.Value = 0) Then k = "-"
    
    
    If (SignalA.Value = 1) Then
        Call chart(A, vbRed, k)
        k = "-"
    End If
    

    If (SignalB.Value = 1) Then
        Call chart(B, vbRed, k)
        k = "-"
    End If
    
    
    If (SignalM.Value = 1) Then Call chart(M, vbBlack, k)
    
    val_d.Caption = "d = " & dist.Value

End Sub


Private Sub Form_Load()
    
    Form1.DrawWidth = 3
    
    A = "0,2.62,5.23,7.82,10.4,12.94,15.45,17.92,20.34,22.7,25,27.23,29.39,31.47,33.46,35.36,37.16,38.86,40.45,41.93,43.3,44.55,45.68,46.68,47.55,48.3,48.91,49.38,49.73,49.93,50,49.93,49.73,49.38,48.91,48.3,47.55,46.68,45.68,44.55,43.3,41.93,40.45,38.86,37.16,35.36,33.46,31.47,29.39,27.23,25,22.7,20.34,17.92,15.45,12.94,10.4,7.82,5.23,2.62,0"
    B = "0,0.14,0.29,0.45,0.64,0.86,1.14,1.53,2.13,3.27,6.41,75.31,7.75,3.61,2.29,1.62,1.2,0.9,0.67,0.48,0.32,0.17,0.03,0.12,0.26,0.42,0.6,0.81,1.08,1.44,2,2.99,5.45,25.09,9.79,4.03,2.47,1.72,1.27,0.95,0.71,0.52,0.35,0.2,0.05,0.09,0.23,0.39,0.56,0.77,1.02,1.36,1.87,2.74,4.74,15.04,13.27,4.54,2.67,1.83,1.34"

    dist_Scroll
    dist.Max = mxAB
    Call draw_scale(UBound(Split(A, ",")) - 1)
    
End Sub


Private Sub cases_Click(Index As Integer)

    
    If (Index = 0) Then
        A = "10.3,23.4,44.8,63.2,44.1,35.1,46.5,62.6,50.4,28.9,24.7,22.7,43.2,17.2,31.5,8.3,17.9,3.9,4.1,2.3"
        B = "18.8,43.1,52.2,45.5,46.8,46.6,67.9,66.3,70.4,62,39.7,50.3,75.9,52.9,44.9,32,64.8,37.4,19.3,9.4"
    End If
    
    
    If (Index = 1) Then
        A = "0,2.62,5.23,7.82,10.4,12.94,15.45,17.92,20.34,22.7,25,27.23,29.39,31.47,33.46,35.36,37.16,38.86,40.45,41.93,43.3,44.55,45.68,46.68,47.55,48.3,48.91,49.38,49.73,49.93,50,49.93,49.73,49.38,48.91,48.3,47.55,46.68,45.68,44.55,43.3,41.93,40.45,38.86,37.16,35.36,33.46,31.47,29.39,27.23,25,22.7,20.34,17.92,15.45,12.94,10.4,7.82,5.23,2.62,0,-2.62,-5.23,-7.82,-10.4,-12.94,-15.45,-17.92,-20.34,-22.7,-25,-27.23,-29.39,-31.47,-33.46,-35.36,-37.16,-38.86,-40.45,-41.93,-43.3,-44.55,-45.68,-46.68,-47.55,-48.3,-48.91,-49.38,-49.73,-49.93,-50,-49.93,-49.73,-49.38,-48.91,-48.3,-47.55,-46.68,-45.68,-44.55,-43.3,-41.93,-40.45,-38.86,-37.16,-35.36,-33.46,-31.47,-29.39,-27.23,-25,-22.7,-20.34,-17.92,-15.45,-12.94,-10.4,-7.82,-5.23,-2.62,0"
        B = "1,-0.99,0.96,-0.91,0.84,-0.76,0.66,-0.55,0.42,-0.29,0.15,-0.01,-0.13,0.27,-0.4,0.53,-0.64,0.74,-0.83,0.9,-0.95,0.99,-1,0.99,-0.97,0.92,-0.86,0.78,-0.68,0.57,-0.45,0.32,-0.18,0.04,0.1,-0.24,0.38,-0.5,0.62,-0.72,0.81,-0.89,0.94,-0.98,1,-1,0.97,-0.93,0.87,-0.79,0.7,-0.59,0.47,-0.34,0.21,-0.07,-0.08,0.22,-0.35,0.48,-0.6,0.71,-0.8,0.88,-0.93,0.98,-1,1,-0.98,0.94,-0.88,0.81,-0.72,0.61,-0.49,0.37,-0.23,0.09,0.05,-0.19,0.33,-0.46,0.58,-0.69,0.78,-0.86,0.93,-0.97,0.99,-1,0.98,-0.95,0.9,-0.82,0.74,-0.63,0.52,-0.39,0.26,-0.12,-0.02,0.16,-0.3,0.43,-0.56,0.67,-0.77,0.85,-0.91,0.96,-0.99,1,-0.99,0.96,-0.91,0.84,-0.75,0.65,-0.54,0.42,-0.28"
    End If
    
    
    If (Index = 2) Then
        'minus
        A = "0,2.62,5.23,7.82,10.4,12.94,15.45,17.92,20.34,22.7,25,27.23,29.39,31.47,33.46,35.36,37.16,38.86,40.45,41.93,43.3,44.55,45.68,46.68,47.55,48.3,48.91,49.38,49.73,49.93,50,49.93,49.73,49.38,48.91,48.3,47.55,46.68,45.68,44.55,43.3,41.93,40.45,38.86,37.16,35.36,33.46,31.47,29.39,27.23,25,22.7,20.34,17.92,15.45,12.94,10.4,7.82,5.23,2.62,0,2.62,5.23,7.82,10.4,12.94,15.45,17.92,20.34,22.7,25,27.23,29.39,31.47,33.46,35.36,37.16,38.86,40.45,41.93,43.3,44.55,45.68,46.68,47.55,48.3,48.91,49.38,49.73,49.93,50,49.93,49.73,49.38,48.91,48.3,47.55,46.68,45.68,44.55,43.3,41.93,40.45,38.86,37.16,35.36,33.46,31.47,29.39,27.23,25,22.7,20.34,17.92,15.45,12.94,10.4,7.82,5.23,2.62,0"
        B = "1,0.99,0.96,0.91,0.84,0.76,0.66,0.55,0.42,0.29,0.15,0.01,0.13,0.27,0.4,0.53,0.64,0.74,0.83,0.9,0.95,0.99,1,0.99,0.97,0.92,0.86,0.78,0.68,0.57,0.45,0.32,0.18,0.04,0.1,0.24,0.38,0.5,0.62,0.72,0.81,0.89,0.94,0.98,1,1,0.97,0.93,0.87,0.79,0.7,0.59,0.47,0.34,0.21,0.07,0.08,0.22,0.35,0.48,0.6,0.71,0.8,0.88,0.93,0.98,1,1,0.98,0.94,0.88,0.81,0.72,0.61,0.49,0.37,0.23,0.09,0.05,0.19,0.33,0.46,0.58,0.69,0.78,0.86,0.93,0.97,0.99,1,0.98,0.95,0.9,0.82,0.74,0.63,0.52,0.39,0.26,0.12,0.02,0.16,0.3,0.43,0.56,0.67,0.77,0.85,0.91,0.96,0.99,1,0.99,0.96,0.91,0.84,0.75,0.65,0.54,0.42,0.28"
    End If
    
    
    If (Index = 3) Then
        A = "1,-0.99,0.96,-0.91,0.84,-0.76,0.66,-0.55,0.42,-0.29,0.15,-0.01,-0.13,0.27,-0.4,0.53,-0.64,0.74,-0.83,0.9,-0.95,0.99,-1,0.99,-0.97,0.92,-0.86,0.78,-0.68,0.57,-0.45,0.32,-0.18,0.04,0.1,-0.24,0.38,-0.5,0.62,-0.72,0.81,-0.89,0.94,-0.98,1,-1,0.97,-0.93,0.87,-0.79,0.7,-0.59,0.47,-0.34,0.21,-0.07,-0.08,0.22,-0.35,0.48,-0.6"
        B = "0,2.62,5.23,7.82,10.4,12.94,15.45,17.92,20.34,22.7,25,27.23,29.39,31.47,33.46,35.36,37.16,38.86,40.45,41.93,43.3,44.55,45.68,46.68,47.55,48.3,48.91,49.38,49.73,49.93,50,49.93,49.73,49.38,48.91,48.3,47.55,46.68,45.68,44.55,43.3,41.93,40.45,38.86,37.16,35.36,33.46,31.47,29.39,27.23,25,22.7,20.34,17.92,15.45,12.94,10.4,7.82,5.23,2.62,0"
    End If
    
    
    If (Index = 4) Then
        'minus
        A = "1,0.99,0.96,0.91,0.84,0.76,0.66,0.55,0.42,0.29,0.15,0.01,0.13,0.27,0.4,0.53,0.64,0.74,0.83,0.9,0.95,0.99,1,0.99,0.97,0.92,0.86,0.78,0.68,0.57,0.45,0.32,0.18,0.04,0.1,0.24,0.38,0.5,0.62,0.72,0.81,0.89,0.94,0.98,1,1,0.97,0.93,0.87,0.79,0.7,0.59,0.47,0.34,0.21,0.07,0.08,0.22,0.35,0.48,0.6"
        B = "0,-0.14,-0.29,-0.45,-0.64,-0.86,-1.14,-1.53,-2.13,-3.27,-6.41,-75.31,7.75,3.61,2.29,1.62,1.2,0.9,0.67,0.48,0.32,0.17,0.03,-0.12,-0.26,-0.42,-0.6,-0.81,-1.08,-1.44,-2,-2.99,-5.45,-25.09,9.79,4.03,2.47,1.72,1.27,0.95,0.71,0.52,0.35,0.2,0.05,-0.09,-0.23,-0.39,-0.56,-0.77,-1.02,-1.36,-1.87,-2.74,-4.74,-15.04,13.27,4.54,2.67,1.83,1.34"
    End If
    
    
    If (Index = 5) Then
        A = "0,2.62,5.23,7.82,10.4,12.94,15.45,17.92,20.34,22.7,25,27.23,29.39,31.47,33.46,35.36,37.16,38.86,40.45,41.93,43.3,44.55,45.68,46.68,47.55,48.3,48.91,49.38,49.73,49.93,50,49.93,49.73,49.38,48.91,48.3,47.55,46.68,45.68,44.55,43.3,41.93,40.45,38.86,37.16,35.36,33.46,31.47,29.39,27.23,25,22.7,20.34,17.92,15.45,12.94,10.4,7.82,5.23,2.62,0"
        B = "0,-0.14,-0.29,-0.45,-0.64,-0.86,-1.14,-1.53,-2.13,-3.27,-6.41,-75.31,7.75,3.61,2.29,1.62,1.2,0.9,0.67,0.48,0.32,0.17,0.03,-0.12,-0.26,-0.42,-0.6,-0.81,-1.08,-1.44,-2,-2.99,-5.45,-25.09,9.79,4.03,2.47,1.72,1.27,0.95,0.71,0.52,0.35,0.2,0.05,-0.09,-0.23,-0.39,-0.56,-0.77,-1.02,-1.36,-1.87,-2.74,-4.74,-15.04,13.27,4.54,2.67,1.83,1.34"
    End If
    
    If (Index = 6) Then
        'minus
        A = "0,2.62,5.23,7.82,10.4,12.94,15.45,17.92,20.34,22.7,25,27.23,29.39,31.47,33.46,35.36,37.16,38.86,40.45,41.93,43.3,44.55,45.68,46.68,47.55,48.3,48.91,49.38,49.73,49.93,50,49.93,49.73,49.38,48.91,48.3,47.55,46.68,45.68,44.55,43.3,41.93,40.45,38.86,37.16,35.36,33.46,31.47,29.39,27.23,25,22.7,20.34,17.92,15.45,12.94,10.4,7.82,5.23,2.62,0"
        B = "0,0.14,0.29,0.45,0.64,0.86,1.14,1.53,2.13,3.27,6.41,75.31,7.75,3.61,2.29,1.62,1.2,0.9,0.67,0.48,0.32,0.17,0.03,0.12,0.26,0.42,0.6,0.81,1.08,1.44,2,2.99,5.45,25.09,9.79,4.03,2.47,1.72,1.27,0.95,0.71,0.52,0.35,0.2,0.05,0.09,0.23,0.39,0.56,0.77,1.02,1.36,1.87,2.74,4.74,15.04,13.27,4.54,2.67,1.83,1.34"
    End If
    
    
    If (Index = 7) Then
        A = "1,-0.99,0.96,-0.91,0.84,-0.76,0.66,-0.55,0.42,-0.29,0.15,-0.01,-0.13,0.27,-0.4,0.53,-0.64,0.74,-0.83,0.9,-0.95,0.99,-1,0.99,-0.97,0.92,-0.86,0.78,-0.68,0.57,-0.45,0.32,-0.18,0.04,0.1,-0.24,0.38,-0.5,0.62,-0.72,0.81,-0.89,0.94,-0.98,1,-1,0.97,-0.93,0.87,-0.79,0.7,-0.59,0.47,-0.34,0.21,-0.07,-0.08,0.22,-0.35,0.48,-0.6"
        B = "0,-0.14,-0.29,-0.45,-0.64,-0.86,-1.14,-1.53,-2.13,-3.27,-6.41,-75.31,7.75,3.61,2.29,1.62,1.2,0.9,0.67,0.48,0.32,0.17,0.03,-0.12,-0.26,-0.42,-0.6,-0.81,-1.08,-1.44,-2,-2.99,-5.45,-25.09,9.79,4.03,2.47,1.72,1.27,0.95,0.71,0.52,0.35,0.2,0.05,-0.09,-0.23,-0.39,-0.56,-0.77,-1.02,-1.36,-1.87,-2.74,-4.74,-15.04,13.27,4.54,2.67,1.83,1.34"
    End If
    
    If (Index = 8) Then
        'minus
        A = "1,0.99,0.96,0.91,0.84,0.76,0.66,0.55,0.42,0.29,0.15,0.01,0.13,0.27,0.4,0.53,0.64,0.74,0.83,0.9,0.95,0.99,1,0.99,0.97,0.92,0.86,0.78,0.68,0.57,0.45,0.32,0.18,0.04,0.1,0.24,0.38,0.5,0.62,0.72,0.81,0.89,0.94,0.98,1,1,0.97,0.93,0.87,0.79,0.7,0.59,0.47,0.34,0.21,0.07,0.08,0.22,0.35,0.48,0.6"
        B = "0,0.14,0.29,0.45,0.64,0.86,1.14,1.53,2.13,3.27,6.41,75.31,7.75,3.61,2.29,1.62,1.2,0.9,0.67,0.48,0.32,0.17,0.03,0.12,0.26,0.42,0.6,0.81,1.08,1.44,2,2.99,5.45,25.09,9.79,4.03,2.47,1.72,1.27,0.95,0.71,0.52,0.35,0.2,0.05,0.09,0.23,0.39,0.56,0.77,1.02,1.36,1.87,2.74,4.74,15.04,13.27,4.54,2.67,1.83,1.34"
    End If


    M = SF(A, B, dist.Value)
    dist.Max = mxAB
    dist_Scroll

End Sub



Function draw_scale(ByVal k_stat As Integer)

    Dim zx, qx, zy, qy As Variant
    Dim sp As Variant
    Dim i As Integer
    
    Form1.Cls

    'X axis on graf_val OBJ
    '-------------------------------------
    sp = graf_val.ScaleWidth / k_stat
    
    For i = 0 To k_stat
    
        zx = graf_val.Left + (sp * i)
        qx = zx
        zy = graf_val.Top + graf_val.ScaleHeight
        qy = graf_val.Top + graf_val.ScaleHeight + 6
    
        If k_stat < 10 Then
            Form1.CurrentX = zx - 6
            Form1.CurrentY = qy
            Form1.Print "S" & i
        End If
    
        Form1.Line (zx, zy)-(qx, qy), &H808080
    
    Next i
    '-------------------------------------

    'Y axis on graf_val OBJ
    '-------------------------------------
    zx = graf_val.Left + graf_val.ScaleWidth
    qx = graf_val.Left + graf_val.ScaleWidth
    zy = graf_val.Top
    qy = zy
    Form1.Line (zx, zy)-(qx + 6, qy), &H808080
    UpperB.Caption = mxg

    zx = graf_val.Left + graf_val.ScaleWidth
    qx = graf_val.Left + graf_val.ScaleWidth
    zy = graf_val.Top + graf_val.ScaleHeight
    qy = zy
    Form1.Line (zx, zy)-(qx + 6, qy), &H808080
    LowerB.Caption = mng
    '-------------------------------------

End Function

Private Sub SignalA_Click()
    dist_Scroll
End Sub

Private Sub SignalB_Click()
    dist_Scroll
End Sub

Private Sub SignalM_Click()
    dist_Scroll
End Sub
