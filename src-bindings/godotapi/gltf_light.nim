
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc color*(self: GLTFLight): Color {.gcsafe, locks: 0.}
proc `color=`*(self: GLTFLight; val: Color) {.gcsafe, locks: 0.}
proc innerConeAngle*(self: GLTFLight): float64 {.gcsafe, locks: 0.}
proc `innerConeAngle=`*(self: GLTFLight; val: float64) {.gcsafe, locks: 0.}
proc intensity*(self: GLTFLight): float64 {.gcsafe, locks: 0.}
proc `intensity=`*(self: GLTFLight; val: float64) {.gcsafe, locks: 0.}
proc outerConeAngle*(self: GLTFLight): float64 {.gcsafe, locks: 0.}
proc `outerConeAngle=`*(self: GLTFLight; val: float64) {.gcsafe, locks: 0.}
proc range*(self: GLTFLight): float64 {.gcsafe, locks: 0.}
proc `range=`*(self: GLTFLight; val: float64) {.gcsafe, locks: 0.}
proc typee*(self: GLTFLight): string {.gcsafe, locks: 0.}
proc `typee=`*(self: GLTFLight; val: string) {.gcsafe, locks: 0.}
var gLTFLightGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: GLTFLight): Color =
  if isNil(gLTFLightGetColorMethodBind):
    gLTFLightGetColorMethodBind = getMethod(cstring"GLTFLight",
        cstring"get_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFLightGetColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFLightSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: GLTFLight; val: Color) =
  if isNil(gLTFLightSetColorMethodBind):
    gLTFLightSetColorMethodBind = getMethod(cstring"GLTFLight",
        cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFLightSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gLTFLightGetInnerConeAngleMethodBind {.threadvar.}: ptr GodotMethodBind
proc innerConeAngle(self: GLTFLight): float64 =
  if isNil(gLTFLightGetInnerConeAngleMethodBind):
    gLTFLightGetInnerConeAngleMethodBind = getMethod(cstring"GLTFLight",
        cstring"get_inner_cone_angle")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFLightGetInnerConeAngleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFLightSetInnerConeAngleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `innerConeAngle=`(self: GLTFLight; val: float64) =
  if isNil(gLTFLightSetInnerConeAngleMethodBind):
    gLTFLightSetInnerConeAngleMethodBind = getMethod(cstring"GLTFLight",
        cstring"set_inner_cone_angle")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFLightSetInnerConeAngleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFLightGetIntensityMethodBind {.threadvar.}: ptr GodotMethodBind
proc intensity(self: GLTFLight): float64 =
  if isNil(gLTFLightGetIntensityMethodBind):
    gLTFLightGetIntensityMethodBind = getMethod(cstring"GLTFLight",
        cstring"get_intensity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFLightGetIntensityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFLightSetIntensityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `intensity=`(self: GLTFLight; val: float64) =
  if isNil(gLTFLightSetIntensityMethodBind):
    gLTFLightSetIntensityMethodBind = getMethod(cstring"GLTFLight",
        cstring"set_intensity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFLightSetIntensityMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFLightGetOuterConeAngleMethodBind {.threadvar.}: ptr GodotMethodBind
proc outerConeAngle(self: GLTFLight): float64 =
  if isNil(gLTFLightGetOuterConeAngleMethodBind):
    gLTFLightGetOuterConeAngleMethodBind = getMethod(cstring"GLTFLight",
        cstring"get_outer_cone_angle")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFLightGetOuterConeAngleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFLightSetOuterConeAngleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `outerConeAngle=`(self: GLTFLight; val: float64) =
  if isNil(gLTFLightSetOuterConeAngleMethodBind):
    gLTFLightSetOuterConeAngleMethodBind = getMethod(cstring"GLTFLight",
        cstring"set_outer_cone_angle")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFLightSetOuterConeAngleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFLightGetRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc range(self: GLTFLight): float64 =
  if isNil(gLTFLightGetRangeMethodBind):
    gLTFLightGetRangeMethodBind = getMethod(cstring"GLTFLight",
        cstring"get_range")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFLightGetRangeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFLightSetRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `range=`(self: GLTFLight; val: float64) =
  if isNil(gLTFLightSetRangeMethodBind):
    gLTFLightSetRangeMethodBind = getMethod(cstring"GLTFLight",
        cstring"set_range")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFLightSetRangeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gLTFLightGetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc typee(self: GLTFLight): string =
  if isNil(gLTFLightGetTypeMethodBind):
    gLTFLightGetTypeMethodBind = getMethod(cstring"GLTFLight",
        cstring"get_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  gLTFLightGetTypeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var gLTFLightSetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typee=`(self: GLTFLight; val: string) =
  if isNil(gLTFLightSetTypeMethodBind):
    gLTFLightSetTypeMethodBind = getMethod(cstring"GLTFLight",
        cstring"set_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  gLTFLightSetTypeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
