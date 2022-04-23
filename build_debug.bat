nim c --out:out\debug\BtS.exe src/Main.nim
copy lib\* out\debug\
mkdir out\debug\data\
xcopy /e /y data\* out\debug\data\
mkdir out\debug\locales\
xcopy /e /y locales\* out\debug\locales\