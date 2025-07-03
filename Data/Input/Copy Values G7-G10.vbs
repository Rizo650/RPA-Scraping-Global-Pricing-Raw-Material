Sub CopyValues()
    Dim ws As Worksheet
    Set ws = ThisWorkbook.Sheets("WhatsApp")
    
    ' Copy values only (not formulas) from G7:G10 to F7:F10
    ws.Range("F7:F10").Value = ws.Range("G7:G10").Value
End Sub