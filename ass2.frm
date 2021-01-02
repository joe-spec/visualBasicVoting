VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6720
   ClientLeft      =   2790
   ClientTop       =   2310
   ClientWidth     =   13830
   LinkTopic       =   "Form1"
   ScaleHeight     =   6720
   ScaleWidth      =   13830
   Begin VB.CommandButton Command3 
      BackColor       =   &H80000012&
      Caption         =   "CLOSE"
      Height          =   615
      Left            =   11520
      TabIndex        =   16
      Top             =   240
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "NEXT SALE"
      Height          =   735
      Left            =   4200
      TabIndex        =   4
      Top             =   4680
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CALCULATE"
      Height          =   735
      Left            =   1200
      TabIndex        =   3
      Top             =   4680
      Width           =   2295
   End
   Begin VB.Frame Frame2 
      Caption         =   "PRICE OUTPUT"
      Height          =   5055
      Left            =   8880
      TabIndex        =   2
      Top             =   1200
      Width           =   4815
      Begin VB.Label discountprice 
         Height          =   615
         Left            =   2160
         TabIndex        =   15
         Top             =   3120
         Width           =   2295
      End
      Begin VB.Label realprice 
         Height          =   735
         Left            =   2160
         TabIndex        =   14
         Top             =   2160
         Width           =   2415
      End
      Begin VB.Label Label7 
         Caption         =   "DISCOUNTED PRICE"
         Height          =   735
         Left            =   240
         TabIndex        =   13
         Top             =   3360
         Width           =   1815
      End
      Begin VB.Label Label6 
         Caption         =   "REAL PRICE"
         Height          =   615
         Left            =   240
         TabIndex        =   12
         Top             =   2280
         Width           =   1815
      End
      Begin VB.Label reciept 
         Height          =   1215
         Left            =   360
         TabIndex        =   11
         Top             =   480
         Width           =   3855
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "DETAILS FOR BOOK TO BE SOLD"
      Height          =   3135
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   8535
      Begin VB.TextBox quantity 
         Height          =   735
         Left            =   3120
         TabIndex        =   10
         Top             =   2040
         Width           =   4575
      End
      Begin VB.TextBox price 
         Height          =   615
         Left            =   3120
         TabIndex        =   9
         Top             =   1200
         Width           =   4575
      End
      Begin VB.TextBox book 
         Height          =   615
         Left            =   3120
         TabIndex        =   8
         Top             =   360
         Width           =   4575
      End
      Begin VB.Label Label4 
         Caption         =   "QUANTITY OF BOOK"
         Height          =   615
         Left            =   240
         TabIndex        =   7
         Top             =   2160
         Width           =   2535
      End
      Begin VB.Label Label3 
         Caption         =   "PRICE OF BOOK"
         Height          =   615
         Left            =   240
         TabIndex        =   6
         Top             =   1200
         Width           =   2535
      End
      Begin VB.Label Label2 
         Caption         =   "NAME OF BOOK"
         Height          =   615
         Left            =   240
         TabIndex        =   5
         Top             =   360
         Width           =   2535
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "POLYCON BOOK SHOP"
      Height          =   495
      Left            =   2400
      TabIndex        =   0
      Top             =   240
      Width           =   8775
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim totalPrice As Integer
Dim discount As Currency
Dim discounted As Currency
totalPrice = Val(price.Text) * Val(quantity.Text)
discount = totalPrice * 0.15
discounted = totalPrice - discount
realprice.Caption = totalPrice
discountprice.Caption = discounted
reciept.Caption = "sold out the book with discount of 15%"
End Sub

Private Sub Command2_Click()
price.Text = ""
book.Text = ""
quantity.Text = ""
realprice.Caption = ""
discountprice.Caption = ""
reciept.Caption = ""
End Sub

Private Sub Command3_Click()
End
End Sub
