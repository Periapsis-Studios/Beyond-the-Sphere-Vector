
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc srcImage*(self: GLTFTexture): int64 {.gcsafe, locks: 0.}
proc `srcImage=`*(self: GLTFTexture; val: int64) {.gcsafe, locks: 0.}
var gLTFTextureGetSrcImageMethodBind {.threadvar.}: ptr GodotMethodBind
proc srcImage(self: GLTFTexture): int64 =
  if isNil(gLTFTextureGetSrcImageMethodBind):
    gLTFTextureGetSrcImageMethodBind = getMethod(cstring"GLTFTexture",
        cstring"get_src_image")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFTextureGetSrcImageMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFTextureSetSrcImageMethodBind {.threadvar.}: ptr GodotMethodBind
proc `srcImage=`(self: GLTFTexture; val: int64) =
  if isNil(gLTFTextureSetSrcImageMethodBind):
    gLTFTextureSetSrcImageMethodBind = getMethod(cstring"GLTFTexture",
        cstring"set_src_image")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFTextureSetSrcImageMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
