
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc finish*(self: HMACContext): PoolByteArray {.gcsafe, locks: 0.}
proc start*(self: HMACContext; hashType: int64; key: PoolByteArray): Error {.
    gcsafe, locks: 0.}
proc update*(self: HMACContext; data: PoolByteArray): Error {.gcsafe, locks: 0.}
var hMACContextFinishMethodBind {.threadvar.}: ptr GodotMethodBind
proc finish(self: HMACContext): PoolByteArray =
  if isNil(hMACContextFinishMethodBind):
    hMACContextFinishMethodBind = getMethod(cstring"HMACContext",
        cstring"finish")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  initGodotPoolByteArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  hMACContextFinishMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var hMACContextStartMethodBind {.threadvar.}: ptr GodotMethodBind
proc start(self: HMACContext; hashType: int64; key: PoolByteArray): Error =
  if isNil(hMACContextStartMethodBind):
    hMACContextStartMethodBind = getMethod(cstring"HMACContext", cstring"start")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(hashType)
  argsToPassToGodot[][1] = key.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  hMACContextStartMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  result = Error(ptrCallVal)

var hMACContextUpdateMethodBind {.threadvar.}: ptr GodotMethodBind
proc update(self: HMACContext; data: PoolByteArray): Error =
  if isNil(hMACContextUpdateMethodBind):
    hMACContextUpdateMethodBind = getMethod(cstring"HMACContext",
        cstring"update")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = data.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  hMACContextUpdateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = Error(ptrCallVal)
