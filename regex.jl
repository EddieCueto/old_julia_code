numchar = "500W"

renumchar = r"\d[0-9]."

num = match(renumchar,numchar)

num = parse(Int16,num.match)
