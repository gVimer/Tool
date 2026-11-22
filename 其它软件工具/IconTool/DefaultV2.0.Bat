ECHO OFF
ECHO *****************************开始处理*****************************
IF EXIST IOS-Default RD /S /Q IOS-Default 
MKDIR "IOS-Default"
IA -rotate 90 -resize 320.x480.! "Default-768h@2x.png" "IOS-Default\Default.png"
IA -rotate 90 -resize 640.x1136! "Default-768h@2x.png" "IOS-Default\Default-568h@2x.png"
IA -rotate 90 -resize 750.x1334! "Default-768h@2x.png" "IOS-Default\Default-667h@2x.png"
IA -rotate 0. -resize 2208x1242! "Default-768h@2x.png" "IOS-Default\Default-736h@3x.png"
IA -rotate 90 -resize 1242x2208! "Default-768h@2x.png" "IOS-Default\Default-736h@3x-1.png"
IA -rotate 0. -resize 1024x768.! "Default-768h@2x.png" "IOS-Default\Default-768h.png"
IA -rotate 0. -resize 2048x1536! "Default-768h@2x.png" "IOS-Default\Default-768h@2x.png"
IA -rotate 90 -resize 768.x1024! "Default-768h@2x.png" "IOS-Default\Default-1024h.png"
IA -rotate 90 -resize 1536x2048! "Default-768h@2x.png" "IOS-Default\Default-1024h@2x.png"
IA -rotate 90 -resize 640.x960.! "Default-768h@2x.png" "IOS-Default\Default@2x.png.png"
ECHO *****************************结束处理*****************************
PAUSE
