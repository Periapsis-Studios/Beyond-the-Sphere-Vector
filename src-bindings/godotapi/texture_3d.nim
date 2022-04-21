
import
  godot, godottypes, godotinternal, texture_layered

export
  godottypes, texture_layered

proc create*(self: Texture3D; width: int64; height: int64; depth: int64;
             format: int64; flags: int64 = 4'i64) {.gcsafe, locks: 0.}
var texture3DCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc create(self: Texture3D; width: int64; height: int64; depth: int64;
            format: int64; flags: int64 = 4'i64) =
  if isNil(texture3DCreateMethodBind):
    texture3DCreateMethodBind = getMethod(cstring"Texture3D", cstring"create")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(width)
  argsToPassToGodot[][1] = unsafeAddr(height)
  argsToPassToGodot[][2] = unsafeAddr(depth)
  argsToPassToGodot[][3] = unsafeAddr(format)
  argsToPassToGodot[][4] = unsafeAddr(flags)
  var ptrCallRet: pointer
  texture3DCreateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
