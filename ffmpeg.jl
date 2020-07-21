currentdir = pwd()
#videosinfolder = readdir(currentdir)

reextension = r"(\.[^.]+)$"

for (_,_,filesinfolders) in walkdir(currentdir)
    for files in filesinfolders
        extension = match(reextension,files)
        if extension == nothing
            println("Not a valid extension")
        else
            if extension.match == ".mkv" || extension.match == ".avi"
                newfiles = replace(files, reextension => s".mp4")
                run(`ffmpeg -i $files $newfiles`)
                sleep(3)
                run(`rm $files`)
            else
                println("No processing done file of type: $(extension.match)")
            end
        end
    end
end
