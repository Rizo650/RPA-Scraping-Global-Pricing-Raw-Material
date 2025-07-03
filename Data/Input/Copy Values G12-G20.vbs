Sub CopyValues()
    Dim ws As Worksheet
    Set ws = ThisWorkbook.Sheets("WhatsApp")
    
    ' Copy values only (not formulas) from G12:G20 to F12:F20
    ws.Range("F12:F20").Value = ws.Range("G12:G20").Value
End Sub