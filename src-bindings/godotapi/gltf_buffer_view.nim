
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc buffer*(self: GLTFBufferView): int64 {.gcsafe, locks: 0.}
proc `buffer=`*(self: GLTFBufferView; val: int64) {.gcsafe, locks: 0.}
proc byteLength*(self: GLTFBufferView): int64 {.gcsafe, locks: 0.}
proc `byteLength=`*(self: GLTFBufferView; val: int64) {.gcsafe, locks: 0.}
proc byteOffset*(self: GLTFBufferView): int64 {.gcsafe, locks: 0.}
proc `byteOffset=`*(self: GLTFBufferView; val: int64) {.gcsafe, locks: 0.}
proc byteStride*(self: GLTFBufferView): int64 {.gcsafe, locks: 0.}
proc `byteStride=`*(self: GLTFBufferView; val: int64) {.gcsafe, locks: 0.}
proc indices*(self: GLTFBufferView): bool {.gcsafe, locks: 0.}
proc `indices=`*(self: GLTFBufferView; val: bool) {.gcsafe, locks: 0.}
var gLTFBufferViewGetBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc buffer(self: GLTFBufferView): int64 =
  if isNil(gLTFBufferViewGetBufferMethodBind):
    gLTFBufferViewGetBufferMethodBind = getMethod(cstring"GLTFBufferView",
        cstring"get_buffer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFBufferViewGetBufferMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFBufferViewSetBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc `buffer=`(self: GLTFBufferView; val: int64) =
  if isNil(gLTFBufferViewSetBufferMethodBind):
    gLTFBufferViewSetBufferMethodBind = getMethod(cstring"GLTFBufferView",
        cstring"set_buffer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFBufferViewSetBufferMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFBufferViewGetByteLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc byteLength(self: GLTFBufferView): int64 =
  if isNil(gLTFBufferViewGetByteLengthMethodBind):
    gLTFBufferViewGetByteLengthMethodBind = getMethod(cstring"GLTFBufferView",
        cstring"get_byte_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFBufferViewGetByteLengthMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gLTFBufferViewSetByteLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `byteLength=`(self: GLTFBufferView; val: int64) =
  if isNil(gLTFBufferViewSetByteLengthMethodBind):
    gLTFBufferViewSetByteLengthMethodBind = getMethod(cstring"GLTFBufferView",
        cstring"set_byte_length")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFBufferViewSetByteLengthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFBufferViewGetByteOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc byteOffset(self: GLTFBufferView): int64 =
  if isNil(gLTFBufferViewGetByteOffsetMethodBind):
    gLTFBufferViewGetByteOffsetMethodBind = getMethod(cstring"GLTFBufferView",
        cstring"get_byte_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFBufferViewGetByteOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gLTFBufferViewSetByteOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `byteOffset=`(self: GLTFBufferView; val: int64) =
  if isNil(gLTFBufferViewSetByteOffsetMethodBind):
    gLTFBufferViewSetByteOffsetMethodBind = getMethod(cstring"GLTFBufferView",
        cstring"set_byte_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFBufferViewSetByteOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFBufferViewGetByteStrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc byteStride(self: GLTFBufferView): int64 =
  if isNil(gLTFBufferViewGetByteStrideMethodBind):
    gLTFBufferViewGetByteStrideMethodBind = getMethod(cstring"GLTFBufferView",
        cstring"get_byte_stride")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFBufferViewGetByteStrideMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gLTFBufferViewSetByteStrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc `byteStride=`(self: GLTFBufferView; val: int64) =
  if isNil(gLTFBufferViewSetByteStrideMethodBind):
    gLTFBufferViewSetByteStrideMethodBind = getMethod(cstring"GLTFBufferView",
        cstring"set_byte_stride")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFBufferViewSetByteStrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFBufferViewGetIndicesMethodBind {.threadvar.}: ptr GodotMethodBind
proc indices(self: GLTFBufferView): bool =
  if isNil(gLTFBufferViewGetIndicesMethodBind):
    gLTFBufferViewGetIndicesMethodBind = getMethod(cstring"GLTFBufferView",
        cstring"get_indices")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFBufferViewGetIndicesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFBufferViewSetIndicesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `indices=`(self: GLTFBufferView; val: bool) =
  if isNil(gLTFBufferViewSetIndicesMethodBind):
    gLTFBufferViewSetIndicesMethodBind = getMethod(cstring"GLTFBufferView",
        cstring"set_indices")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFBufferViewSetIndicesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
