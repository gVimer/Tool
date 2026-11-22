Dos2UnixPath="C:/GIT/Usr/Bin/DOS2UNIX.exe"

CMD="%s -c ascii -n %s %s" % (Dos2UnixPath,"./Vimrc.o","C:/PUTTY/Vimrc.o") 
__import__("os").system(CMD)
