import os
import times
import std / strformat

var logContent: string = ""
let appDir = getAppDir()



proc log*(input: string) =
  var time = getTime()
  var formattedTime = time.format("yyyy-MM-dd HH:mm:ss")
  logContent.add(fmt"{formattedTime}: {input}" & "\n")
  writeFile(appdir & "/log.txt", logContent)