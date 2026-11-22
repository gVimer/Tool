v1SigningEnabled true   // 启用 V1 签名
v2SigningEnabled true  // 可选，禁用 V2（根据需求）

import os
import sys
Log = print

APK_PATH      = "Apk"                #原始APK包存放目录
UNPACK_PATH   = "Temp"               #解包输出目录
SIGN_PATH     = "DEBUG.KEYSTORE"     #签名文件-打包APK的时候不设置签名会用默认的
APKTOOLS_PATH = "APKTOOL_2.6.0.JAR"  #APKTOOLS文件路径

'''签名信息'''
SIGN_STORPASS  = "android"
SIGN_KEYPASS   = "android"
SIGN_KEY_ALIAS = "androiddebugkey"

def Run(CMD):
  Log(CMD)
  assert os.system(CMD)==0,"Err："+CMD

def UnPackApk():
	Log("开始解包")
	Apks= os.listdir(APK_PATH)		
	for Apk in Apks:
		Path    = APK_PATH+ "/" +Apk
		DirName = Apk.split(".")
		CMD = "JAVA -jar " + APKTOOLS_PATH + " d -f " + Path +" -o " + UNPACK_PATH + "/" + DirName[0]
		Log("--------------执行解包命令---------------")
		Run(CMD)

def PackApk():
	Apks= os.listdir(UNPACK_PATH)		#得到文件夹下的所有文件名称
	for Apk in Apks:
		Path    = UNPACK_PATH + "/" +Apk
		NewPath = Apk +".apk"
		CMD = "JAVA -jar " + APKTOOLS_PATH + " b -f " + Path + " -o "+ NewPath
		Log("--------------执行捆绑命令---------------")
		Run(CMD)
		CMD = "jarsigner -digestalg SHA1 -sigalg MD5withRSA -tsa http://sha256timestamp.ws.symantec.com/sha256/timestamp -keystore " +  SIGN_PATH + " -storepass "+ SIGN_STORPASS +" -keypass "+ SIGN_KEYPASS + " " + NewPath + " " + SIGN_KEY_ALIAS
		CMD = "JARSIGNER -digestalg SHA1 -sigalg MD5withRSA -keystore "+SIGN_PATH+" -storepass "+SIGN_STORPASS+" -keypass "+SIGN_KEYPASS+ " "+NewPath+" "+SIGN_KEY_ALIAS
		Log("--------------执行签名命令---------------")
		Run(CMD)
		Log("--------------获取签名信息---------------")
		CMD = "KEYTOOL -v -list -printcert -jarfile " + NewPath
		Run(CMD)

UnPackApk()
PackApk()
