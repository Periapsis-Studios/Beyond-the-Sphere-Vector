import 
  sdl2_nim / sdl,
  os,
  strformat

proc initSDL*() =
  if getAppFileName() == "bts_debug.exe":
    logSetAllPriority(Log_Priority_Verbose)
  if sdl.init(sdl.Init_Everything) != 0:
    logCritical(Log_Category_Error, fmt"SDL initialization failed: {getError()}")

proc destroySDL*() =
  sdl.quit()