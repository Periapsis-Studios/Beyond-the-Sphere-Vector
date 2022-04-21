
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc loop*(self: GLTFAnimation): bool {.gcsafe, locks: 0.}
proc `loop=`*(self: GLTFAnimation; val: bool) {.gcsafe, locks: 0.}
var gLTFAnimationGetLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc loop(self: GLTFAnimation): bool =
  if isNil(gLTFAnimationGetLoopMethodBind):
    gLTFAnimationGetLoopMethodBind = getMethod(cstring"GLTFAnimation",
        cstring"get_loop")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAnimationGetLoopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFAnimationSetLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc `loop=`(self: GLTFAnimation; val: bool) =
  if isNil(gLTFAnimationSetLoopMethodBind):
    gLTFAnimationSetLoopMethodBind = getMethod(cstring"GLTFAnimation",
        cstring"set_loop")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAnimationSetLoopMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
