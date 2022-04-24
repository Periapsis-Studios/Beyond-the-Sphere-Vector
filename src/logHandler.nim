import
  sdl2_nim / sdl,
  times,
  strformat,
  os
var
  log: string = ""

proc handleLog*(userdata: pointer, category: LogCategory,
                priority: LogPriority, message: cstring) {.cdecl.} =
  var time = format(getTime(), "HH-mm-ss:fff")
  case priority
  of Log_Priority_Verbose:
    log.add(fmt"{time}, VERBOSE-{category}: {message}" & "\n")
  of Log_Priority_Debug:
    log.add(fmt"{time}, DEBUG-{category}: {message}" & "\n")
  of Log_Priority_Info:
    log.add(fmt"{time}, INFO-{category}: {message}" & "\n")
  of Log_Priority_Warn:
    log.add(fmt"{time}, WARN-{category}: {message}" & "\n")
  of Log_Priority_Error:
    log.add(fmt"{time}, ERROR-{category}: {message}" & "\n")
  of Log_Priority_Critical:
    log.add(fmt"{time}, CRITICAL-{category}: {message}" & "\n")
  else:
    log.add(fmt"{time}, UNKNOWN-{category}: {message}" & "\n")

  writeFile(fmt"{getAppDir()}\debug.log", log)