
import
  godot, godottypes, godotinternal, audio_stream

export
  godottypes, audio_stream

proc data*(self: AudioStreamMP3): PoolByteArray {.gcsafe, locks: 0.}
proc `data=`*(self: AudioStreamMP3; val: PoolByteArray) {.gcsafe, locks: 0.}
proc loop*(self: AudioStreamMP3): bool {.gcsafe, locks: 0.}
proc `loop=`*(self: AudioStreamMP3; val: bool) {.gcsafe, locks: 0.}
proc loopOffset*(self: AudioStreamMP3): float64 {.gcsafe, locks: 0.}
proc `loopOffset=`*(self: AudioStreamMP3; val: float64) {.gcsafe, locks: 0.}
var audioStreamMP3GetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: AudioStreamMP3): PoolByteArray =
  if isNil(audioStreamMP3GetDataMethodBind):
    audioStreamMP3GetDataMethodBind = getMethod(cstring"AudioStreamMP3",
        cstring"get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  initGodotPoolByteArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  audioStreamMP3GetDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var audioStreamMP3SetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: AudioStreamMP3; val: PoolByteArray) =
  if isNil(audioStreamMP3SetDataMethodBind):
    audioStreamMP3SetDataMethodBind = getMethod(cstring"AudioStreamMP3",
        cstring"set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolByteArray
  var ptrCallRet: pointer
  audioStreamMP3SetDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioStreamMP3HasLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc loop(self: AudioStreamMP3): bool =
  if isNil(audioStreamMP3HasLoopMethodBind):
    audioStreamMP3HasLoopMethodBind = getMethod(cstring"AudioStreamMP3",
        cstring"has_loop")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamMP3HasLoopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioStreamMP3SetLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loop=`(self: AudioStreamMP3; val: bool) =
  if isNil(audioStreamMP3SetLoopMethodBind):
    audioStreamMP3SetLoopMethodBind = getMethod(cstring"AudioStreamMP3",
        cstring"set_loop")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamMP3SetLoopMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioStreamMP3GetLoopOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc loopOffset(self: AudioStreamMP3): float64 =
  if isNil(audioStreamMP3GetLoopOffsetMethodBind):
    audioStreamMP3GetLoopOffsetMethodBind = getMethod(cstring"AudioStreamMP3",
        cstring"get_loop_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamMP3GetLoopOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioStreamMP3SetLoopOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loopOffset=`(self: AudioStreamMP3; val: float64) =
  if isNil(audioStreamMP3SetLoopOffsetMethodBind):
    audioStreamMP3SetLoopOffsetMethodBind = getMethod(cstring"AudioStreamMP3",
        cstring"set_loop_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioStreamMP3SetLoopOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
