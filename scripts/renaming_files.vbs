Set objFso = CreateObject("Scripting.FileSystemObject")

Set Folder = objFSO.GetFolder("./")

For Each File In Folder.Files

    sNewFile = File.Name

    sNewFile = Replace(sNewFile,"1","1-400x400")

    if (sNewFile<>File.Name) then

        File.Move(File.ParentFolder+"\"+sNewFile)

    end if

Next