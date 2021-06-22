let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""

print(singleLineString)
print(multilineString)

let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping the second quotation mark "\""
Escaping the third quotation mark ""\"
Escaping all three quotation marks \"\"\"
"""

print(threeDoubleQuotationMarks)
print(##"Line 1\##nLine 2"##)
print(#"""
hoge\\#n"""
fuga
"""#)
