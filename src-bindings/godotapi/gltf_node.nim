
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc camera*(self: GLTFNode): int64 {.gcsafe, locks: 0.}
proc `camera=`*(self: GLTFNode; val: int64) {.gcsafe, locks: 0.}
proc children*(self: GLTFNode): PoolIntArray {.gcsafe, locks: 0.}
proc `children=`*(self: GLTFNode; val: PoolIntArray) {.gcsafe, locks: 0.}
proc height*(self: GLTFNode): int64 {.gcsafe, locks: 0.}
proc `height=`*(self: GLTFNode; val: int64) {.gcsafe, locks: 0.}
proc joint*(self: GLTFNode): bool {.gcsafe, locks: 0.}
proc `joint=`*(self: GLTFNode; val: bool) {.gcsafe, locks: 0.}
proc light*(self: GLTFNode): int64 {.gcsafe, locks: 0.}
proc `light=`*(self: GLTFNode; val: int64) {.gcsafe, locks: 0.}
proc mesh*(self: GLTFNode): int64 {.gcsafe, locks: 0.}
proc `mesh=`*(self: GLTFNode; val: int64) {.gcsafe, locks: 0.}
proc parent*(self: GLTFNode): int64 {.gcsafe, locks: 0.}
proc `parent=`*(self: GLTFNode; val: int64) {.gcsafe, locks: 0.}
proc rotation*(self: GLTFNode): Quat {.gcsafe, locks: 0.}
proc `rotation=`*(self: GLTFNode; val: Quat) {.gcsafe, locks: 0.}
proc scale*(self: GLTFNode): Vector3 {.gcsafe, locks: 0.}
proc `scale=`*(self: GLTFNode; val: Vector3) {.gcsafe, locks: 0.}
proc skeleton*(self: GLTFNode): int64 {.gcsafe, locks: 0.}
proc `skeleton=`*(self: GLTFNode; val: int64) {.gcsafe, locks: 0.}
proc skin*(self: GLTFNode): int64 {.gcsafe, locks: 0.}
proc `skin=`*(self: GLTFNode; val: int64) {.gcsafe, locks: 0.}
proc translation*(self: GLTFNode): Vector3 {.gcsafe, locks: 0.}
proc `translation=`*(self: GLTFNode; val: Vector3) {.gcsafe, locks: 0.}
proc xform*(self: GLTFNode): Transform {.gcsafe, locks: 0.}
proc `xform=`*(self: GLTFNode; val: Transform) {.gcsafe, locks: 0.}
var gLTFNodeGetCameraMethodBind {.threadvar.}: ptr GodotMethodBind
proc camera(self: GLTFNode): int64 =
  if isNil(gLTFNodeGetCameraMethodBind):
    gLTFNodeGetCameraMethodBind = getMethod(cstring"GLTFNode",
        cstring"get_camera")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetCameraMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetCameraMethodBind {.threadvar.}: ptr GodotMethodBind
proc `camera=`(self: GLTFNode; val: int64) =
  if isNil(gLTFNodeSetCameraMethodBind):
    gLTFNodeSetCameraMethodBind = getMethod(cstring"GLTFNode",
        cstring"set_camera")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetCameraMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gLTFNodeGetChildrenMethodBind {.threadvar.}: ptr GodotMethodBind
proc children(self: GLTFNode): PoolIntArray =
  if isNil(gLTFNodeGetChildrenMethodBind):
    gLTFNodeGetChildrenMethodBind = getMethod(cstring"GLTFNode",
        cstring"get_children")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  initGodotPoolIntArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFNodeGetChildrenMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var gLTFNodeSetChildrenMethodBind {.threadvar.}: ptr GodotMethodBind
proc `children=`(self: GLTFNode; val: PoolIntArray) =
  if isNil(gLTFNodeSetChildrenMethodBind):
    gLTFNodeSetChildrenMethodBind = getMethod(cstring"GLTFNode",
        cstring"set_children")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolIntArray
  var ptrCallRet: pointer
  gLTFNodeSetChildrenMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var gLTFNodeGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc height(self: GLTFNode): int64 =
  if isNil(gLTFNodeGetHeightMethodBind):
    gLTFNodeGetHeightMethodBind = getMethod(cstring"GLTFNode",
        cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `height=`(self: GLTFNode; val: int64) =
  if isNil(gLTFNodeSetHeightMethodBind):
    gLTFNodeSetHeightMethodBind = getMethod(cstring"GLTFNode",
        cstring"set_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gLTFNodeGetJointMethodBind {.threadvar.}: ptr GodotMethodBind
proc joint(self: GLTFNode): bool =
  if isNil(gLTFNodeGetJointMethodBind):
    gLTFNodeGetJointMethodBind = getMethod(cstring"GLTFNode",
        cstring"get_joint")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetJointMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetJointMethodBind {.threadvar.}: ptr GodotMethodBind
proc `joint=`(self: GLTFNode; val: bool) =
  if isNil(gLTFNodeSetJointMethodBind):
    gLTFNodeSetJointMethodBind = getMethod(cstring"GLTFNode",
        cstring"set_joint")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetJointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var gLTFNodeGetLightMethodBind {.threadvar.}: ptr GodotMethodBind
proc light(self: GLTFNode): int64 =
  if isNil(gLTFNodeGetLightMethodBind):
    gLTFNodeGetLightMethodBind = getMethod(cstring"GLTFNode",
        cstring"get_light")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetLightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetLightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `light=`(self: GLTFNode; val: int64) =
  if isNil(gLTFNodeSetLightMethodBind):
    gLTFNodeSetLightMethodBind = getMethod(cstring"GLTFNode",
        cstring"set_light")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetLightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var gLTFNodeGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc mesh(self: GLTFNode): int64 =
  if isNil(gLTFNodeGetMeshMethodBind):
    gLTFNodeGetMeshMethodBind = getMethod(cstring"GLTFNode", cstring"get_mesh")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mesh=`(self: GLTFNode; val: int64) =
  if isNil(gLTFNodeSetMeshMethodBind):
    gLTFNodeSetMeshMethodBind = getMethod(cstring"GLTFNode", cstring"set_mesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var gLTFNodeGetParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc parent(self: GLTFNode): int64 =
  if isNil(gLTFNodeGetParentMethodBind):
    gLTFNodeGetParentMethodBind = getMethod(cstring"GLTFNode",
        cstring"get_parent")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetParentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `parent=`(self: GLTFNode; val: int64) =
  if isNil(gLTFNodeSetParentMethodBind):
    gLTFNodeSetParentMethodBind = getMethod(cstring"GLTFNode",
        cstring"set_parent")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetParentMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gLTFNodeGetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc rotation(self: GLTFNode): Quat =
  if isNil(gLTFNodeGetRotationMethodBind):
    gLTFNodeGetRotationMethodBind = getMethod(cstring"GLTFNode",
        cstring"get_rotation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetRotationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetRotationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rotation=`(self: GLTFNode; val: Quat) =
  if isNil(gLTFNodeSetRotationMethodBind):
    gLTFNodeSetRotationMethodBind = getMethod(cstring"GLTFNode",
        cstring"set_rotation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetRotationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var gLTFNodeGetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc scale(self: GLTFNode): Vector3 =
  if isNil(gLTFNodeGetScaleMethodBind):
    gLTFNodeGetScaleMethodBind = getMethod(cstring"GLTFNode",
        cstring"get_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scale=`(self: GLTFNode; val: Vector3) =
  if isNil(gLTFNodeSetScaleMethodBind):
    gLTFNodeSetScaleMethodBind = getMethod(cstring"GLTFNode",
        cstring"set_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var gLTFNodeGetSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeleton(self: GLTFNode): int64 =
  if isNil(gLTFNodeGetSkeletonMethodBind):
    gLTFNodeGetSkeletonMethodBind = getMethod(cstring"GLTFNode",
        cstring"get_skeleton")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetSkeletonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skeleton=`(self: GLTFNode; val: int64) =
  if isNil(gLTFNodeSetSkeletonMethodBind):
    gLTFNodeSetSkeletonMethodBind = getMethod(cstring"GLTFNode",
        cstring"set_skeleton")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetSkeletonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var gLTFNodeGetSkinMethodBind {.threadvar.}: ptr GodotMethodBind
proc skin(self: GLTFNode): int64 =
  if isNil(gLTFNodeGetSkinMethodBind):
    gLTFNodeGetSkinMethodBind = getMethod(cstring"GLTFNode", cstring"get_skin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetSkinMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetSkinMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skin=`(self: GLTFNode; val: int64) =
  if isNil(gLTFNodeSetSkinMethodBind):
    gLTFNodeSetSkinMethodBind = getMethod(cstring"GLTFNode", cstring"set_skin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetSkinMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var gLTFNodeGetTranslationMethodBind {.threadvar.}: ptr GodotMethodBind
proc translation(self: GLTFNode): Vector3 =
  if isNil(gLTFNodeGetTranslationMethodBind):
    gLTFNodeGetTranslationMethodBind = getMethod(cstring"GLTFNode",
        cstring"get_translation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetTranslationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetTranslationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `translation=`(self: GLTFNode; val: Vector3) =
  if isNil(gLTFNodeSetTranslationMethodBind):
    gLTFNodeSetTranslationMethodBind = getMethod(cstring"GLTFNode",
        cstring"set_translation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetTranslationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFNodeGetXformMethodBind {.threadvar.}: ptr GodotMethodBind
proc xform(self: GLTFNode): Transform =
  if isNil(gLTFNodeGetXformMethodBind):
    gLTFNodeGetXformMethodBind = getMethod(cstring"GLTFNode",
        cstring"get_xform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFNodeGetXformMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFNodeSetXformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `xform=`(self: GLTFNode; val: Transform) =
  if isNil(gLTFNodeSetXformMethodBind):
    gLTFNodeSetXformMethodBind = getMethod(cstring"GLTFNode",
        cstring"set_xform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFNodeSetXformMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
