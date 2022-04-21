
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc diffuseFactor*(self: GLTFSpecGloss): Color {.gcsafe, locks: 0.}
proc `diffuseFactor=`*(self: GLTFSpecGloss; val: Color) {.gcsafe, locks: 0.}
proc diffuseImg*(self: GLTFSpecGloss): Image {.gcsafe, locks: 0.}
proc `diffuseImg=`*(self: GLTFSpecGloss; val: Image) {.gcsafe, locks: 0.}
proc glossFactor*(self: GLTFSpecGloss): float64 {.gcsafe, locks: 0.}
proc `glossFactor=`*(self: GLTFSpecGloss; val: float64) {.gcsafe, locks: 0.}
proc specGlossImg*(self: GLTFSpecGloss): Image {.gcsafe, locks: 0.}
proc `specGlossImg=`*(self: GLTFSpecGloss; val: Image) {.gcsafe, locks: 0.}
proc specularFactor*(self: GLTFSpecGloss): Color {.gcsafe, locks: 0.}
proc `specularFactor=`*(self: GLTFSpecGloss; val: Color) {.gcsafe, locks: 0.}
var gLTFSpecGlossGetDiffuseFactorMethodBind {.threadvar.}: ptr GodotMethodBind
proc diffuseFactor(self: GLTFSpecGloss): Color =
  if isNil(gLTFSpecGlossGetDiffuseFactorMethodBind):
    gLTFSpecGlossGetDiffuseFactorMethodBind = getMethod(cstring"GLTFSpecGloss",
        cstring"get_diffuse_factor")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFSpecGlossGetDiffuseFactorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gLTFSpecGlossSetDiffuseFactorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `diffuseFactor=`(self: GLTFSpecGloss; val: Color) =
  if isNil(gLTFSpecGlossSetDiffuseFactorMethodBind):
    gLTFSpecGlossSetDiffuseFactorMethodBind = getMethod(cstring"GLTFSpecGloss",
        cstring"set_diffuse_factor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFSpecGlossSetDiffuseFactorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFSpecGlossGetDiffuseImgMethodBind {.threadvar.}: ptr GodotMethodBind
proc diffuseImg(self: GLTFSpecGloss): Image =
  if isNil(gLTFSpecGlossGetDiffuseImgMethodBind):
    gLTFSpecGlossGetDiffuseImgMethodBind = getMethod(cstring"GLTFSpecGloss",
        cstring"get_diffuse_img")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gLTFSpecGlossGetDiffuseImgMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var gLTFSpecGlossSetDiffuseImgMethodBind {.threadvar.}: ptr GodotMethodBind
proc `diffuseImg=`(self: GLTFSpecGloss; val: Image) =
  if isNil(gLTFSpecGlossSetDiffuseImgMethodBind):
    gLTFSpecGlossSetDiffuseImgMethodBind = getMethod(cstring"GLTFSpecGloss",
        cstring"set_diffuse_img")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  gLTFSpecGlossSetDiffuseImgMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFSpecGlossGetGlossFactorMethodBind {.threadvar.}: ptr GodotMethodBind
proc glossFactor(self: GLTFSpecGloss): float64 =
  if isNil(gLTFSpecGlossGetGlossFactorMethodBind):
    gLTFSpecGlossGetGlossFactorMethodBind = getMethod(cstring"GLTFSpecGloss",
        cstring"get_gloss_factor")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFSpecGlossGetGlossFactorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gLTFSpecGlossSetGlossFactorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glossFactor=`(self: GLTFSpecGloss; val: float64) =
  if isNil(gLTFSpecGlossSetGlossFactorMethodBind):
    gLTFSpecGlossSetGlossFactorMethodBind = getMethod(cstring"GLTFSpecGloss",
        cstring"set_gloss_factor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFSpecGlossSetGlossFactorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFSpecGlossGetSpecGlossImgMethodBind {.threadvar.}: ptr GodotMethodBind
proc specGlossImg(self: GLTFSpecGloss): Image =
  if isNil(gLTFSpecGlossGetSpecGlossImgMethodBind):
    gLTFSpecGlossGetSpecGlossImgMethodBind = getMethod(cstring"GLTFSpecGloss",
        cstring"get_spec_gloss_img")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gLTFSpecGlossGetSpecGlossImgMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var gLTFSpecGlossSetSpecGlossImgMethodBind {.threadvar.}: ptr GodotMethodBind
proc `specGlossImg=`(self: GLTFSpecGloss; val: Image) =
  if isNil(gLTFSpecGlossSetSpecGlossImgMethodBind):
    gLTFSpecGlossSetSpecGlossImgMethodBind = getMethod(cstring"GLTFSpecGloss",
        cstring"set_spec_gloss_img")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  gLTFSpecGlossSetSpecGlossImgMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFSpecGlossGetSpecularFactorMethodBind {.threadvar.}: ptr GodotMethodBind
proc specularFactor(self: GLTFSpecGloss): Color =
  if isNil(gLTFSpecGlossGetSpecularFactorMethodBind):
    gLTFSpecGlossGetSpecularFactorMethodBind = getMethod(
        cstring"GLTFSpecGloss", cstring"get_specular_factor")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFSpecGlossGetSpecularFactorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gLTFSpecGlossSetSpecularFactorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `specularFactor=`(self: GLTFSpecGloss; val: Color) =
  if isNil(gLTFSpecGlossSetSpecularFactorMethodBind):
    gLTFSpecGlossSetSpecularFactorMethodBind = getMethod(
        cstring"GLTFSpecGloss", cstring"set_specular_factor")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFSpecGlossSetSpecularFactorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
