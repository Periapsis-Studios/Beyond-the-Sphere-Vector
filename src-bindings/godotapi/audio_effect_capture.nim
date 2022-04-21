
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc bufferLength*(self: AudioEffectCapture): float64 {.gcsafe, locks: 0.}
proc `bufferLength=`*(self: AudioEffectCapture; val: float64) {.gcsafe, locks: 0.}
proc canGetBuffer*(self: AudioEffectCapture; frames: int64): bool {.gcsafe,
    locks: 0.}
proc clearBuffer*(self: AudioEffectCapture) {.gcsafe, locks: 0.}
proc getBuffer*(self: AudioEffectCapture; frames: int64): PoolVector2Array {.
    gcsafe, locks: 0.}
proc getBufferLengthFrames*(self: AudioEffectCapture): int64 {.gcsafe, locks: 0.}
proc getDiscardedFrames*(self: AudioEffectCapture): int64 {.gcsafe, locks: 0.}
proc getFramesAvailable*(self: AudioEffectCapture): int64 {.gcsafe, locks: 0.}
proc getPushedFrames*(self: AudioEffectCapture): int64 {.gcsafe, locks: 0.}
var audioEffectCaptureGetBufferLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc bufferLength(self: AudioEffectCapture): float64 =
  if isNil(audioEffectCaptureGetBufferLengthMethodBind):
    audioEffectCaptureGetBufferLengthMethodBind = getMethod(
        cstring"AudioEffectCapture", cstring"get_buffer_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCaptureGetBufferLengthMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectCaptureSetBufferLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bufferLength=`(self: AudioEffectCapture; val: float64) =
  if isNil(audioEffectCaptureSetBufferLengthMethodBind):
    audioEffectCaptureSetBufferLengthMethodBind = getMethod(
        cstring"AudioEffectCapture", cstring"set_buffer_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectCaptureSetBufferLengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectCaptureCanGetBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc canGetBuffer(self: AudioEffectCapture; frames: int64): bool =
  if isNil(audioEffectCaptureCanGetBufferMethodBind):
    audioEffectCaptureCanGetBufferMethodBind = getMethod(
        cstring"AudioEffectCapture", cstring"can_get_buffer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(frames)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCaptureCanGetBufferMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectCaptureClearBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearBuffer(self: AudioEffectCapture) =
  if isNil(audioEffectCaptureClearBufferMethodBind):
    audioEffectCaptureClearBufferMethodBind = getMethod(
        cstring"AudioEffectCapture", cstring"clear_buffer")
  var ptrCallRet: pointer
  audioEffectCaptureClearBufferMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectCaptureGetBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBuffer(self: AudioEffectCapture; frames: int64): PoolVector2Array =
  if isNil(audioEffectCaptureGetBufferMethodBind):
    audioEffectCaptureGetBufferMethodBind = getMethod(
        cstring"AudioEffectCapture", cstring"get_buffer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(frames)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  initGodotPoolVector2Array(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  audioEffectCaptureGetBufferMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var audioEffectCaptureGetBufferLengthFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBufferLengthFrames(self: AudioEffectCapture): int64 =
  if isNil(audioEffectCaptureGetBufferLengthFramesMethodBind):
    audioEffectCaptureGetBufferLengthFramesMethodBind = getMethod(
        cstring"AudioEffectCapture", cstring"get_buffer_length_frames")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCaptureGetBufferLengthFramesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var audioEffectCaptureGetDiscardedFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDiscardedFrames(self: AudioEffectCapture): int64 =
  if isNil(audioEffectCaptureGetDiscardedFramesMethodBind):
    audioEffectCaptureGetDiscardedFramesMethodBind = getMethod(
        cstring"AudioEffectCapture", cstring"get_discarded_frames")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCaptureGetDiscardedFramesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectCaptureGetFramesAvailableMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFramesAvailable(self: AudioEffectCapture): int64 =
  if isNil(audioEffectCaptureGetFramesAvailableMethodBind):
    audioEffectCaptureGetFramesAvailableMethodBind = getMethod(
        cstring"AudioEffectCapture", cstring"get_frames_available")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCaptureGetFramesAvailableMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectCaptureGetPushedFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPushedFrames(self: AudioEffectCapture): int64 =
  if isNil(audioEffectCaptureGetPushedFramesMethodBind):
    audioEffectCaptureGetPushedFramesMethodBind = getMethod(
        cstring"AudioEffectCapture", cstring"get_pushed_frames")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectCaptureGetPushedFramesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
