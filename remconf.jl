currentdir = pwd()

renotvalid = r"(^\._).+(\.[^.]+)$"
reextension = r"(\.[^.]+)$"

for (root,_,filesinfolders) in walkdir(currentdir)
    for files in filesinfolders
        notvalid = match(renotvalid,files)
        if notvalid != nothing
            maybenotvalid = notvalid.captures
            if any(x -> x=="._",maybenotvalid) && (any(x -> x==".mkv",maybenotvalid) || any(x -> x==".avi",maybenotvalid))
                println("File: $root/$files is not valid, removing")
                sleep(2)
                run(`rm $root/$files`)
            end
        end
        extension = match(reextension,files)
        if extension.match == ".rar"
            println("this is a $files file removing")
            sleep(2)
            run(`rm $root/$files`)
        end
    end
end
