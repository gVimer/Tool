ECHO OFF
ECHO *****************************开始处理*****************************
if EXIST IOS RD /S /Q IOS 
if EXIST Android RD /Q /S Android
MKDIR IOS
MKDIR Android
MKDIR "Android\drawable"
MKDIR "Android\drawable-hdpi"
MKDIR "Android\drawable-ldpi"
MKDIR "Android\drawable-mdpi"
MKDIR "Android\drawable-xhdpi"
MKDIR "Android\drawable-xxhdpi"
IA -resize 20.x20.!   "icon-1024.png"  "IOS\icon-20.png"
IA -resize 29.x29.!   "icon-1024.png"  "IOS\icon-29.png"
IA -resize 40.x40.!   "icon-1024.png"  "IOS\icon-40.png"
IA -resize 58.x58.!   "icon-1024.png"  "IOS\icon-58.png"
IA -resize 60.x60.!   "icon-1024.png"  "IOS\icon-60.png"
IA -resize 76.x76.!   "icon-1024.png"  "IOS\icon-76.png"
IA -resize 80.x80.!   "icon-1024.png"  "IOS\icon-80.png"
IA -resize 87.x87.!   "icon-1024.png"  "IOS\icon-87.png"
IA -resize 120x120!   "icon-1024.png"  "IOS\icon-120.png"
IA -resize 152x152!   "icon-1024.png"  "IOS\icon-152.png"
IA -resize 167x167!   "icon-1024.png"  "IOS\icon-167.png"
IA -resize 180x180!   "icon-1024.png"  "IOS\icon-180.png"
IA -resize 1024x1024! "icon-1024.png"  "IOS\icon-1024.png"
IA -resize 72.x72.!   "icon-1024.png"  "Android\drawable\icon.png"
IA -resize 72.x72.!   "icon-1024.png"  "Android\drawable-hdpi\icon.png"
IA -resize 36.x36.!   "icon-1024.png"  "Android\drawable-ldpi\icon.png"
IA -resize 48.x48.!   "icon-1024.png"  "Android\drawable-mdpi\icon.png"
IA -resize 96.x96.!   "icon-1024.png"  "Android\drawable-xhdpi\icon.png"
IA -resize 144x144!   "icon-1024.png"  "Android\drawable-xxhdpi\icon.png"
ECHO *****************************结束处理*****************************
PAUSE
