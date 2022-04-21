
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc fovSize*(self: GLTFCamera): float64 {.gcsafe, locks: 0.}
proc `fovSize=`*(self: GLTFCamera; val: float64) {.gcsafe, locks: 0.}
proc perspective*(self: GLTFCamera): bool {.gcsafe, locks: 0.}
proc `perspective=`*(self: GLTFCamera; val: bool) {.gcsafe, locks: 0.}
proc zfar*(self: GLTFCamera): float64 {.gcsafe, locks: 0.}
proc `zfar=`*(self: GLTFCamera; val: float64) {.gcsafe, locks: 0.}
proc znear*(self: GLTFCamera): float64 {.gcsafe, locks: 0.}
proc `znear=`*(self: GLTFCamera; val: float64) {.gcsafe, locks: 0.}
var gLTFCameraGetFovSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc fovSize(self: GLTFCamera): float64 =
  if isNil(gLTFCameraGetFovSizeMethodBind):
    gLTFCameraGetFovSizeMethodBind = getMethod(cstring"GLTFCamera",
        cstring"get_fov_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFCameraGetFovSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFCameraSetFovSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fovSize=`(self: GLTFCamera; val: float64) =
  if isNil(gLTFCameraSetFovSizeMethodBind):
    gLTFCameraSetFovSizeMethodBind = getMethod(cstring"GLTFCamera",
        cstring"set_fov_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFCameraSetFovSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFCameraGetPerspectiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc perspective(self: GLTFCamera): bool =
  if isNil(gLTFCameraGetPerspectiveMethodBind):
    gLTFCameraGetPerspectiveMethodBind = getMethod(cstring"GLTFCamera",
        cstring"get_perspective")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFCameraGetPerspectiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFCameraSetPerspectiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `perspective=`(self: GLTFCamera; val: bool) =
  if isNil(gLTFCameraSetPerspectiveMethodBind):
    gLTFCameraSetPerspectiveMethodBind = getMethod(cstring"GLTFCamera",
        cstring"set_perspective")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFCameraSetPerspectiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFCameraGetZfarMethodBind {.threadvar.}: ptr GodotMethodBind
proc zfar(self: GLTFCamera): float64 =
  if isNil(gLTFCameraGetZfarMethodBind):
    gLTFCameraGetZfarMethodBind = getMethod(cstring"GLTFCamera",
        cstring"get_zfar")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFCameraGetZfarMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFCameraSetZfarMethodBind {.threadvar.}: ptr GodotMethodBind
proc `zfar=`(self: GLTFCamera; val: float64) =
  if isNil(gLTFCameraSetZfarMethodBind):
    gLTFCameraSetZfarMethodBind = getMethod(cstring"GLTFCamera",
        cstring"set_zfar")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFCameraSetZfarMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gLTFCameraGetZnearMethodBind {.threadvar.}: ptr GodotMethodBind
proc znear(self: GLTFCamera): float64 =
  if isNil(gLTFCameraGetZnearMethodBind):
    gLTFCameraGetZnearMethodBind = getMethod(cstring"GLTFCamera",
        cstring"get_znear")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFCameraGetZnearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFCameraSetZnearMethodBind {.threadvar.}: ptr GodotMethodBind
proc `znear=`(self: GLTFCamera; val: float64) =
  if isNil(gLTFCameraSetZnearMethodBind):
    gLTFCameraSetZnearMethodBind = getMethod(cstring"GLTFCamera",
        cstring"set_znear")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFCameraSetZnearMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
