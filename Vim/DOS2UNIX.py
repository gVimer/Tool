Dos2UnixPath="C:/GIT/Usr/Bin/DOS2UNIX.exe"
def RecFiles(DIR):
  L=[]
  for Parent,DirNames,FileNames in __import__("os").walk(DIR):
    for FileName in FileNames:
      FilePath=__import__("os").path.join(Parent,FileName)
      EXT=FilePath[-3:].upper()
      if EXT in [".PY"]:
        L.append(FilePath)
  return L

L=RecFiles(R".")
for e in L:
    CMD=f"{Dos2UnixPath} -c ascii -n {e} {e}" 
    print(CMD)
    __import__("os").system(CMD)
