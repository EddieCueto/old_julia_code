currentdir = pwd()
#videosinfolder = readdir(currentdir)

reextension = r"(\.[^.]+)$"

for (root,foldersinfolders,filesinfolders) in walkdir(currentdir)
    if !isempty(foldersinfolders)
        for folder in foldersinfolders
            println(root * "/" * folder * "/")
                println(foldersinfolders)
                println(filesinfolders)
            #for file in filesinfolders
            #    pathtofiles = root * "/" * folder * "/" * file
            #    println(pathtofiles)
            #end
        end
    end
end
