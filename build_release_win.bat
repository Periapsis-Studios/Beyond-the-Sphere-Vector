nim c -d:release --opt:speed --app:gui --out:out\release\BtS src/Main.nim
nim c -d:release --opt:speed --app:gui --out:out\release\BtS --os:linux src/Main.nim
nim c -d:release --opt:speed --app:gui --out:out\release\BtS --os:macos src/Main.nim
nim c -d:release --opt:speed --app:gui --out:out\release\BtS-arm --os:macos --cpu:arm src/Main.nim
copy lib\* out\release
mkdir out\release\data\
xcopy /e /y data\* out\release\data\
mkdir out\release\locales\
xcopy /e /y locales\* out\release\locales\