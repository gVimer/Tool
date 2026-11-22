ECHO OFF
ECHO *****************************开始处理*****************************
IF EXIST IOS-Default RD /S /Q IOS-Default 
MKDIR "IOS-Default"
IA -rotate 90 -resize 768.x1024! "Default-768h@2x.png" "IOS-Default\Default-1024h.png"
IA -rotate 0. -resize 1024x768.! "Default-768h@2x.png" "IOS-Default\Default-768h.png"
IA -rotate 90 -resize 1536x2048! "Default-768h@2x.png" "IOS-Default\Default-1024h@2x.png"
IA -rotate 0. -resize 2048x1536! "Default-768h@2x.png" "IOS-Default\Default-768h@2x.png"
IA -rotate 90 -resize 320.x568.! "Default-768h@2x.png" "IOS-Default\Default-568h.png"
IA -rotate 90 -resize 320.x480.! "Default-768h@2x.png" "IOS-Default\Default.png"
IA -rotate 90 -resize 640.x960.! "Default-768h@2x.png" "IOS-Default\Default@2x-1.png"
IA -rotate 90 -resize 640.x960.! "Default-768h@2x.png" "IOS-Default\Default@2x.png"
IA -rotate 90 -resize 640.x1136! "Default-768h@2x.png" "IOS-Default\Default-568h@2x-1.png"
IA -rotate 90 -resize 640.x1136! "Default-768h@2x.png" "IOS-Default\Default-568h@2x.png"
IA -rotate 90 -resize 750.x1334! "Default-768h@2x.png" "IOS-Default\Default-667h@2x.png"
IA -rotate 0. -resize 2208x1242! "Default-768h@2x.png" "IOS-Default\Default-736h@3x.png"
ECHO *****************************结束处理*****************************
PAUSE

iPhone Portrait  iOS8 Retina HD 5.5  LaunchImage-800-Portrait-736h@3x.png    1242x2208 
iPhone Landscape iOS8 Retina HD 5.5  LaunchImage-800-Landscape-736h@3x.png   2208x1242 
iPhone Portrait iOS8  Retina HD 4.7  LaunchImage-800-667h@2x.png             750x1334 
iPhone Portrait iOS 7,8          2x  Default@2x.png                          640x960 
iPhone Portrait iOS 7,8   Retina  4  LaunchImage-700-568h@2x.png             640x1136   
iPhone Portrait iOS 5,6          1x  Default.png                             320x480 
iPhone Portrait iOS 5,6          2x  Default@2x.png                          640x960 
iPhone Portrait iOS 5,6    Retina 4  Default-568h@2x.png                     640x1136 

iPad  Portrait  iOS 7,8          1x  Default-Portrait~ipad.png               768x1024 
iPad  Portrait  iOS 7,8          2x  Default-Portrait@2x~ipad.png            1536x2048 
iPad  Landscape iOS 7,8          1x  Default-Portrait~ipad.png               1024x768 
iPad  Landscape iOS 7,8          2x  Default-Portrait@2x~ipad.png            2048x1536 

ipad Portrait iOS 5,6
1X     768*1024
2X     1536*2048
iPad Landscape
1X     1024*768
2X     2048*1536



IPhone1G|3G|3GS  320X480
IPhone4|4S       640X960
IPhone5|5C|5S|SE 640X1136
IPhone6|6S|7     750X1334
IPhone6P|6SP|7P  1242X2208

IPad1|2|Mini 1024X768
TheNewiPad|IPad4|IPadAir||IPadAir2 2048X1536
IPadMini2|3|4  2048X1536
IPadPro 2732X2048
