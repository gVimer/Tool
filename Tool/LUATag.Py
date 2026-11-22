'''.不能匹配汉字'''
ROOT=R"E:\CQ\CLIENT\RUNTIME\ASSETS\SCRIPTS"
__import__("os").system(R'CD /D '+ROOT)
STR=R'CTAGS.exe -f D:\Tags '
STR=STR+R'--langdef=MYLUA '
STR=STR+R'--langmap=MYLUA:.lua '
STR=STR+R'--exclude=server '
STR=STR+R'--exclude=scenes '
STR=STR+R'--regex-MYLUA=/^^\s*function\s+([a-zA-Z]+):([a-zA-Z]+)\(/\2/f/ '
STR=STR+R'--regex-MYLUA=/^^\s*function\s+(\w+)\.(\w+)\(/\2/f/ '
STR=STR+R'--regex-MYLUA=/^.*\s*function\s*(\w+)\s*\(/\1/f/ '
STR=STR+R'--regex-MYLUA=/^^\s?(\w+)\s*=\s*\{.*$/\1/e/ '
STR=STR+R'--regex-MYLUA=/^^\s?(\w+)\s*=\s*\{?\s*$/\1/e/ '
STR=STR+R'--regex-MYLUA=/^^\s{0,3}(\w+)\s*=\s*\w+\s*,\s*$/\1/e/ '
STR=STR+R'--regex-MYLUA=/^^\s{0,3}(\w+)\s*=\s*\w+\s*,\s*(--)+/\1/e/ '
STR=STR+R'--regex-MYLUA=/^^\s*(\w+)\s*=\s*\"([^=]+)\"\s*,/\1/e/ '
STR=STR+R'--languages=MYLUA --excmd=number -R '+ROOT
print(STR)
__import__("os").system(STR)
