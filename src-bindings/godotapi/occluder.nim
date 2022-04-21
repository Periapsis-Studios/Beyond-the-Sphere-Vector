
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc shape*(self: Occluder): OccluderShape {.gcsafe, locks: 0.}
proc `shape=`*(self: Occluder; val: OccluderShape) {.gcsafe, locks: 0.}
proc resourceChanged*(self: Occluder; resource: Resource) {.gcsafe, locks: 0.}
var occluderGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shape(self: Occluder): OccluderShape =
  if isNil(occluderGetShapeMethodBind):
    occluderGetShapeMethodBind = getMethod(cstring"Occluder",
        cstring"get_shape")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  occluderGetShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var occluderSetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shape=`(self: Occluder; val: OccluderShape) =
  if isNil(occluderSetShapeMethodBind):
    occluderSetShapeMethodBind = getMethod(cstring"Occluder",
        cstring"set_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  occluderSetShapeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var occluderResourceChangedMethodBind {.threadvar.}: ptr GodotMethodBind
proc resourceChanged(self: Occluder; resource: Resource) =
  if isNil(occluderResourceChangedMethodBind):
    occluderResourceChangedMethodBind = getMethod(cstring"Occluder",
        cstring"resource_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not resource.isNil:
    resource.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  occluderResourceChangedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
