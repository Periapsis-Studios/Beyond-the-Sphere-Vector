
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc linkedRoom*(self: Portal): NodePath {.gcsafe, locks: 0.}
proc `linkedRoom=`*(self: Portal; val: NodePath) {.gcsafe, locks: 0.}
proc points*(self: Portal): PoolVector2Array {.gcsafe, locks: 0.}
proc `points=`*(self: Portal; val: PoolVector2Array) {.gcsafe, locks: 0.}
proc portalActive*(self: Portal): bool {.gcsafe, locks: 0.}
proc `portalActive=`*(self: Portal; val: bool) {.gcsafe, locks: 0.}
proc portalMargin*(self: Portal): float64 {.gcsafe, locks: 0.}
proc `portalMargin=`*(self: Portal; val: float64) {.gcsafe, locks: 0.}
proc twoWay*(self: Portal): bool {.gcsafe, locks: 0.}
proc `twoWay=`*(self: Portal; val: bool) {.gcsafe, locks: 0.}
proc useDefaultMargin*(self: Portal): bool {.gcsafe, locks: 0.}
proc `useDefaultMargin=`*(self: Portal; val: bool) {.gcsafe, locks: 0.}
proc setPoint*(self: Portal; index: int64; position: Vector2) {.gcsafe, locks: 0.}
var portalGetLinkedRoomMethodBind {.threadvar.}: ptr GodotMethodBind
proc linkedRoom(self: Portal): NodePath =
  if isNil(portalGetLinkedRoomMethodBind):
    portalGetLinkedRoomMethodBind = getMethod(cstring"Portal",
        cstring"get_linked_room")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  portalGetLinkedRoomMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var portalSetLinkedRoomMethodBind {.threadvar.}: ptr GodotMethodBind
proc `linkedRoom=`(self: Portal; val: NodePath) =
  if isNil(portalSetLinkedRoomMethodBind):
    portalSetLinkedRoomMethodBind = getMethod(cstring"Portal",
        cstring"set_linked_room")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  portalSetLinkedRoomMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var portalGetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc points(self: Portal): PoolVector2Array =
  if isNil(portalGetPointsMethodBind):
    portalGetPointsMethodBind = getMethod(cstring"Portal", cstring"get_points")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector2Array
  initGodotPoolVector2Array(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  portalGetPointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolVector2Array(ptrCallVal)

var portalSetPointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `points=`(self: Portal; val: PoolVector2Array) =
  if isNil(portalSetPointsMethodBind):
    portalSetPointsMethodBind = getMethod(cstring"Portal", cstring"set_points")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector2Array
  var ptrCallRet: pointer
  portalSetPointsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var portalGetPortalActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc portalActive(self: Portal): bool =
  if isNil(portalGetPortalActiveMethodBind):
    portalGetPortalActiveMethodBind = getMethod(cstring"Portal",
        cstring"get_portal_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  portalGetPortalActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var portalSetPortalActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `portalActive=`(self: Portal; val: bool) =
  if isNil(portalSetPortalActiveMethodBind):
    portalSetPortalActiveMethodBind = getMethod(cstring"Portal",
        cstring"set_portal_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  portalSetPortalActiveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var portalGetPortalMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc portalMargin(self: Portal): float64 =
  if isNil(portalGetPortalMarginMethodBind):
    portalGetPortalMarginMethodBind = getMethod(cstring"Portal",
        cstring"get_portal_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  portalGetPortalMarginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var portalSetPortalMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `portalMargin=`(self: Portal; val: float64) =
  if isNil(portalSetPortalMarginMethodBind):
    portalSetPortalMarginMethodBind = getMethod(cstring"Portal",
        cstring"set_portal_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  portalSetPortalMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var portalIsTwoWayMethodBind {.threadvar.}: ptr GodotMethodBind
proc twoWay(self: Portal): bool =
  if isNil(portalIsTwoWayMethodBind):
    portalIsTwoWayMethodBind = getMethod(cstring"Portal", cstring"is_two_way")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  portalIsTwoWayMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var portalSetTwoWayMethodBind {.threadvar.}: ptr GodotMethodBind
proc `twoWay=`(self: Portal; val: bool) =
  if isNil(portalSetTwoWayMethodBind):
    portalSetTwoWayMethodBind = getMethod(cstring"Portal", cstring"set_two_way")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  portalSetTwoWayMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var portalGetUseDefaultMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc useDefaultMargin(self: Portal): bool =
  if isNil(portalGetUseDefaultMarginMethodBind):
    portalGetUseDefaultMarginMethodBind = getMethod(cstring"Portal",
        cstring"get_use_default_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  portalGetUseDefaultMarginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var portalSetUseDefaultMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useDefaultMargin=`(self: Portal; val: bool) =
  if isNil(portalSetUseDefaultMarginMethodBind):
    portalSetUseDefaultMarginMethodBind = getMethod(cstring"Portal",
        cstring"set_use_default_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  portalSetUseDefaultMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var portalSetPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPoint(self: Portal; index: int64; position: Vector2) =
  if isNil(portalSetPointMethodBind):
    portalSetPointMethodBind = getMethod(cstring"Portal", cstring"set_point")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var ptrCallRet: pointer
  portalSetPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                   ptrCallRet)
