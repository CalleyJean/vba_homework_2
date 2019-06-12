Sub Stock_Stuff()
‘Declaring variables
    Dim Column  As Double
    Dim Volume As Double
 
' Creating column headers
    Cells(1, 9).Value = "Ticker"
    Cells(1, 10).Value = "Total Stock Volume"

    Column = 2
    Cells(Column, 9).Value = Cells(Column, 1).Value

    LastRow = Cells(Rows.Count, 1).End(xlUp).Row

    For Row = 2 To LastRow

    If Cells(Row, 1).Value = Cells(Column, 9) Then
    
     
     Volume = Volume + Cells(Row, 7).Value
     
     Else
     Cells(Column, 10).Value = Volume
     Volume = Cells(Row, 7).Value
     Column = Column + 1
     Cells(Column, 9).Value = Cells(Row, 1).Value
     End If
     
     Next Row
     
     Cells(Column, 10).Value = Volume
     
End Sub
