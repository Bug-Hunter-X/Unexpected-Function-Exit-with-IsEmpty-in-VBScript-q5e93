# Unexpected Function Exit with IsEmpty in VBScript
This example demonstrates a potential issue with the `IsEmpty` function in VBScript when used with variant variables that could contain empty strings or zero-length arrays.  The `IsEmpty` function might return `True` even when a variable is not truly empty in the context of intended use.

## The Bug
The `f` function is designed to add two numbers.  However, if either input is an empty string ("") or a zero-length array, `IsEmpty` will incorrectly return `True`, causing premature function termination. This will always result in a zero being returned. 

## The Solution
The solution checks for empty strings or zero-length arrays explicitly.  It checks if `a` or `b` are either empty strings or zero-length arrays by leveraging `TypeName` function. This function enables an explicit check for these empty data types, thus fixing the issue. The new function handles them gracefully preventing any unexpected exits.
