s = "GTCA"
t = "TGAC"

println(reverse("abc"))

const complement = Dict('A' => 'T', 'C' => 'G', 'T' => 'A', 'G' => 'C')

println(complement['T'])

println([complement[c] for c in reverse(s)] |> join)

println("ABCD" |> lowercase |> reverse)

reverse_complement(s) = [complement[c] for c in reverse(s)] |> join

s = readstring("text.txt")

println(reverse_complement(s))

"Find portion of DNA string containing C or G"
cgcontent(dna::AbstractString) = count(x -> x in "CG",dna) / length(dna)

println(cgcontent(s))
