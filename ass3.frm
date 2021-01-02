VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5565
   ClientLeft      =   3810
   ClientTop       =   2310
   ClientWidth     =   12570
   LinkTopic       =   "Form1"
   ScaleHeight     =   5565
   ScaleWidth      =   12570
   Begin VB.CommandButton Command1 
      Caption         =   "DONT VOTE"
      Height          =   615
      Left            =   2760
      TabIndex        =   7
      Top             =   3840
      Width           =   1335
   End
   Begin VB.CommandButton vote 
      Caption         =   "VOTE"
      Height          =   615
      Left            =   2760
      TabIndex        =   5
      Top             =   2880
      Width           =   1335
   End
   Begin VB.Frame Frame2 
      Caption         =   "STATUS"
      Height          =   2055
      Left            =   4440
      TabIndex        =   4
      Top             =   1680
      Width           =   7695
      Begin VB.Label status 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1215
         Left            =   240
         TabIndex        =   6
         Top             =   600
         Width           =   7095
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "VOTE"
      Height          =   3735
      Left            =   240
      TabIndex        =   1
      Top             =   1200
      Width           =   2295
      Begin VB.TextBox age 
         Height          =   615
         Left            =   240
         TabIndex        =   3
         Top             =   2400
         Width           =   1815
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         Caption         =   "ENTER YOUR AGE INTO THE BOX BELOW TO VOTE"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Left            =   240
         TabIndex        =   2
         Top             =   840
         Width           =   1815
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "STUDENT VOTING SYSTEM"
      Height          =   615
      Left            =   1440
      TabIndex        =   0
      Top             =   240
      Width           =   9135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
End
End Sub

Private Sub vote_Click()
If Val(age.Text) >= 18 Then
    status.Caption = "THE PROCESS WAS SUCCESSFUL, AND YOU VOTED SUCCESSFULLY"
Else
    status.Caption = "YOU CAN NOT VOTE NOW, COME BACK WHEN YOU HAVE REACH VOTING AGE (18)"
End If
End Sub
