numchar = "0W"

renumchar = r"(\d+)"

num = match(renumchar,numchar)

num = parse(Int16,num.match)
