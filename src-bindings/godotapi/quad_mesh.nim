
import
  godot, godottypes, godotinternal, primitive_mesh

export
  godottypes, primitive_mesh

proc centerOffset*(self: QuadMesh): Vector3 {.gcsafe, locks: 0.}
proc `centerOffset=`*(self: QuadMesh; val: Vector3) {.gcsafe, locks: 0.}
proc size*(self: QuadMesh): Vector2 {.gcsafe, locks: 0.}
proc `size=`*(self: QuadMesh; val: Vector2) {.gcsafe, locks: 0.}
var quadMeshGetCenterOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc centerOffset(self: QuadMesh): Vector3 =
  if isNil(quadMeshGetCenterOffsetMethodBind):
    quadMeshGetCenterOffsetMethodBind = getMethod(cstring"QuadMesh",
        cstring"get_center_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  quadMeshGetCenterOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var quadMeshSetCenterOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `centerOffset=`(self: QuadMesh; val: Vector3) =
  if isNil(quadMeshSetCenterOffsetMethodBind):
    quadMeshSetCenterOffsetMethodBind = getMethod(cstring"QuadMesh",
        cstring"set_center_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  quadMeshSetCenterOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var quadMeshGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: QuadMesh): Vector2 =
  if isNil(quadMeshGetSizeMethodBind):
    quadMeshGetSizeMethodBind = getMethod(cstring"QuadMesh", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  quadMeshGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var quadMeshSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `size=`(self: QuadMesh; val: Vector2) =
  if isNil(quadMeshSetSizeMethodBind):
    quadMeshSetSizeMethodBind = getMethod(cstring"QuadMesh", cstring"set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  quadMeshSetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
