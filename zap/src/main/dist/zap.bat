@echo off

if exist "%USERPROFILE%\SHJZapPro\.ZAP_JVM.properties" (
	set /p jvmopts=< "%USERPROFILE%\SHJZapPro\.ZAP_JVM.properties"
) else (
	set jvmopts=-Xmx1g
)

start javaw %jvmopts% -jar @zapJar@ %*
