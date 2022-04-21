
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc points*(self: Room): PoolVector3Array {.gcsafe, locks: 0.}
proc `points=`*(self: Room; val: PoolVector3Array) {.gcsafe, locks: 0.}
proc roomSimplify*(self: Room): float64 {.gcsafe, locks: 0.}
proc `roomSimplify=`*(self: Room; val: float64) {.gcsafe, locks: 0.}
proc useDefaultSimplify*(self: Room): bool {.gcsafe, locks: 0.}
proc `useDefaultSimplify=`*(self: Room; val: bool) {.gcsafe, locks: 0.}
proc setPoint*(self: Room; index: int64; position: Vector3) {.gcsafe, locks: 0.}
var roomGetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc points(self: Room): PoolVector3Array =
  if isNil(roomGetPointsMethodBind):
    roomGetPointsMethodBind = getMethod(cstring"Room", cstring"get_points")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  initGodotPoolVector3Array(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  roomGetPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var roomSetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `points=`(self: Room; val: PoolVector3Array) =
  if isNil(roomSetPointsMethodBind):
    roomSetPointsMethodBind = getMethod(cstring"Room", cstring"set_points")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector3Array
  var ptrCallRet: pointer
  roomSetPointsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                  ptrCallRet)

var roomGetRoomSimplifyMethodBind {.threadvar.}: ptr GodotMethodBind
proc roomSimplify(self: Room): float64 =
  if isNil(roomGetRoomSimplifyMethodBind):
    roomGetRoomSimplifyMethodBind = getMethod(cstring"Room",
        cstring"get_room_simplify")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomGetRoomSimplifyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var roomSetRoomSimplifyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `roomSimplify=`(self: Room; val: float64) =
  if isNil(roomSetRoomSimplifyMethodBind):
    roomSetRoomSimplifyMethodBind = getMethod(cstring"Room",
        cstring"set_room_simplify")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomSetRoomSimplifyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var roomGetUseDefaultSimplifyMethodBind {.threadvar.}: ptr GodotMethodBind
proc useDefaultSimplify(self: Room): bool =
  if isNil(roomGetUseDefaultSimplifyMethodBind):
    roomGetUseDefaultSimplifyMethodBind = getMethod(cstring"Room",
        cstring"get_use_default_simplify")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomGetUseDefaultSimplifyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var roomSetUseDefaultSimplifyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useDefaultSimplify=`(self: Room; val: bool) =
  if isNil(roomSetUseDefaultSimplifyMethodBind):
    roomSetUseDefaultSimplifyMethodBind = getMethod(cstring"Room",
        cstring"set_use_default_simplify")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomSetUseDefaultSimplifyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomSetPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPoint(self: Room; index: int64; position: Vector3) =
  if isNil(roomSetPointMethodBind):
    roomSetPointMethodBind = getMethod(cstring"Room", cstring"set_point")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  roomSetPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
