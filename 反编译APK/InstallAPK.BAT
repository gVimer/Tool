FOR /F %%I IN ('DIR /B *.apk') DO (
   ADB.exe install -r %%I
)

