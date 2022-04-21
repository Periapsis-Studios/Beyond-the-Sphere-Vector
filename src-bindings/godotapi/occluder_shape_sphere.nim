
import
  godot, godottypes, godotinternal, occluder_shape

export
  godottypes, occluder_shape

proc spheres*(self: OccluderShapeSphere): Array {.gcsafe, locks: 0.}
proc `spheres=`*(self: OccluderShapeSphere; val: Array) {.gcsafe, locks: 0.}
proc setSpherePosition*(self: OccluderShapeSphere; index: int64;
                        position: Vector3) {.gcsafe, locks: 0.}
proc setSphereRadius*(self: OccluderShapeSphere; index: int64; radius: float64) {.
    gcsafe, locks: 0.}
var occluderShapeSphereGetSpheresMethodBind {.threadvar.}: ptr GodotMethodBind
proc spheres(self: OccluderShapeSphere): Array =
  if isNil(occluderShapeSphereGetSpheresMethodBind):
    occluderShapeSphereGetSpheresMethodBind = getMethod(
        cstring"OccluderShapeSphere", cstring"get_spheres")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  occluderShapeSphereGetSpheresMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var occluderShapeSphereSetSpheresMethodBind {.threadvar.}: ptr GodotMethodBind
proc `spheres=`(self: OccluderShapeSphere; val: Array) =
  if isNil(occluderShapeSphereSetSpheresMethodBind):
    occluderShapeSphereSetSpheresMethodBind = getMethod(
        cstring"OccluderShapeSphere", cstring"set_spheres")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  occluderShapeSphereSetSpheresMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var occluderShapeSphereSetSpherePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSpherePosition(self: OccluderShapeSphere; index: int64;
                       position: Vector3) =
  if isNil(occluderShapeSphereSetSpherePositionMethodBind):
    occluderShapeSphereSetSpherePositionMethodBind = getMethod(
        cstring"OccluderShapeSphere", cstring"set_sphere_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  occluderShapeSphereSetSpherePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var occluderShapeSphereSetSphereRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSphereRadius(self: OccluderShapeSphere; index: int64; radius: float64) =
  if isNil(occluderShapeSphereSetSphereRadiusMethodBind):
    occluderShapeSphereSetSphereRadiusMethodBind = getMethod(
        cstring"OccluderShapeSphere", cstring"set_sphere_radius")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(radius)
  var ptrCallRet: pointer
  occluderShapeSphereSetSphereRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
