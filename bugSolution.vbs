Function f(a, b)
  If TypeName(a) = "Variant()" And UBound(a) = -1 Then Exit Function
  If TypeName(b) = "Variant()" And UBound(b) = -1 Then Exit Function
  If a = "" Then Exit Function 
  If b = "" Then Exit Function
  c = a + b
End Function