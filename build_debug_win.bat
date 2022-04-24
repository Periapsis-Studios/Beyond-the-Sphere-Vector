nim c --out:out\debug\BtS_debug src/main.nim
nim c --out:out\debug\BtS_debug --os:linux src/main.nim
nim c --out:out\debug\BtS_debug --os:macos src/main.nim
nim c --out:out\debug\BtS_debug-arm --os:macos --cpu:arm src/main.nim
copy lib\* out\debug\
mkdir out\debug\data\
xcopy /e /y data\* out\debug\data\
mkdir out\debug\locales\
xcopy /e /y locales\* out\debug\locales\