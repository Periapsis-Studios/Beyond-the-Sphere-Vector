
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  MODE_CBC_DECRYPT* = 3'i64
  MODE_CBC_ENCRYPT* = 2'i64
  MODE_ECB_DECRYPT* = 1'i64
  MODE_ECB_ENCRYPT* = 0'i64
  MODE_MAX* = 4'i64
proc finish*(self: AESContext) {.gcsafe, locks: 0.}
proc getIvState*(self: AESContext): PoolByteArray {.gcsafe, locks: 0.}
proc start*(self: AESContext; mode: int64; key: PoolByteArray;
            iv: PoolByteArray = newPoolByteArray()): Error {.gcsafe, locks: 0.}
proc update*(self: AESContext; src: PoolByteArray): PoolByteArray {.gcsafe,
    locks: 0.}
var aESContextFinishMethodBind {.threadvar.}: ptr GodotMethodBind
proc finish(self: AESContext) =
  if isNil(aESContextFinishMethodBind):
    aESContextFinishMethodBind = getMethod(cstring"AESContext", cstring"finish")
  var ptrCallRet: pointer
  aESContextFinishMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var aESContextGetIvStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIvState(self: AESContext): PoolByteArray =
  if isNil(aESContextGetIvStateMethodBind):
    aESContextGetIvStateMethodBind = getMethod(cstring"AESContext",
        cstring"get_iv_state")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  initGodotPoolByteArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  aESContextGetIvStateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var aESContextStartMethodBind {.threadvar.}: ptr GodotMethodBind
proc start(self: AESContext; mode: int64; key: PoolByteArray;
           iv: PoolByteArray = newPoolByteArray()): Error =
  if isNil(aESContextStartMethodBind):
    aESContextStartMethodBind = getMethod(cstring"AESContext", cstring"start")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mode)
  argsToPassToGodot[][1] = key.godotPoolByteArray
  argsToPassToGodot[][2] = iv.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  aESContextStartMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  result = Error(ptrCallVal)

var aESContextUpdateMethodBind {.threadvar.}: ptr GodotMethodBind
proc update(self: AESContext; src: PoolByteArray): PoolByteArray =
  if isNil(aESContextUpdateMethodBind):
    aESContextUpdateMethodBind = getMethod(cstring"AESContext", cstring"update")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = src.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  initGodotPoolByteArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  aESContextUpdateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  result = newPoolByteArray(ptrCallVal)
