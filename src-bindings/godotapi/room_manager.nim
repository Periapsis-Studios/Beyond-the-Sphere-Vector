
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

const
  PVS_MODE_DISABLED* = 0'i64
  PVS_MODE_FULL* = 2'i64
  PVS_MODE_PARTIAL* = 1'i64
proc active*(self: RoomManager): bool {.gcsafe, locks: 0.}
proc `active=`*(self: RoomManager; val: bool) {.gcsafe, locks: 0.}
proc debugSprawl*(self: RoomManager): bool {.gcsafe, locks: 0.}
proc `debugSprawl=`*(self: RoomManager; val: bool) {.gcsafe, locks: 0.}
proc defaultPortalMargin*(self: RoomManager): float64 {.gcsafe, locks: 0.}
proc `defaultPortalMargin=`*(self: RoomManager; val: float64) {.gcsafe, locks: 0.}
proc gameplayMonitor*(self: RoomManager): bool {.gcsafe, locks: 0.}
proc `gameplayMonitor=`*(self: RoomManager; val: bool) {.gcsafe, locks: 0.}
proc mergeMeshes*(self: RoomManager): bool {.gcsafe, locks: 0.}
proc `mergeMeshes=`*(self: RoomManager; val: bool) {.gcsafe, locks: 0.}
proc overlapWarningThreshold*(self: RoomManager): int64 {.gcsafe, locks: 0.}
proc `overlapWarningThreshold=`*(self: RoomManager; val: int64) {.gcsafe,
    locks: 0.}
proc portalDepthLimit*(self: RoomManager): int64 {.gcsafe, locks: 0.}
proc `portalDepthLimit=`*(self: RoomManager; val: int64) {.gcsafe, locks: 0.}
proc previewCamera*(self: RoomManager): NodePath {.gcsafe, locks: 0.}
proc `previewCamera=`*(self: RoomManager; val: NodePath) {.gcsafe, locks: 0.}
proc pvsMode*(self: RoomManager): int64 {.gcsafe, locks: 0.}
proc `pvsMode=`*(self: RoomManager; val: int64) {.gcsafe, locks: 0.}
proc roamingExpansionMargin*(self: RoomManager): float64 {.gcsafe, locks: 0.}
proc `roamingExpansionMargin=`*(self: RoomManager; val: float64) {.gcsafe,
    locks: 0.}
proc roomSimplify*(self: RoomManager): float64 {.gcsafe, locks: 0.}
proc `roomSimplify=`*(self: RoomManager; val: float64) {.gcsafe, locks: 0.}
proc roomlist*(self: RoomManager): NodePath {.gcsafe, locks: 0.}
proc `roomlist=`*(self: RoomManager; val: NodePath) {.gcsafe, locks: 0.}
proc showMargins*(self: RoomManager): bool {.gcsafe, locks: 0.}
proc `showMargins=`*(self: RoomManager; val: bool) {.gcsafe, locks: 0.}
proc useSecondaryPvs*(self: RoomManager): bool {.gcsafe, locks: 0.}
proc `useSecondaryPvs=`*(self: RoomManager; val: bool) {.gcsafe, locks: 0.}
proc roomsClear*(self: RoomManager) {.gcsafe, locks: 0.}
proc roomsConvert*(self: RoomManager) {.gcsafe, locks: 0.}
var roomManagerRoomsGetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc active(self: RoomManager): bool =
  if isNil(roomManagerRoomsGetActiveMethodBind):
    roomManagerRoomsGetActiveMethodBind = getMethod(cstring"RoomManager",
        cstring"rooms_get_active")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerRoomsGetActiveMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var roomManagerRoomsSetActiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc `active=`(self: RoomManager; val: bool) =
  if isNil(roomManagerRoomsSetActiveMethodBind):
    roomManagerRoomsSetActiveMethodBind = getMethod(cstring"RoomManager",
        cstring"rooms_set_active")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerRoomsSetActiveMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetDebugSprawlMethodBind {.threadvar.}: ptr GodotMethodBind
proc debugSprawl(self: RoomManager): bool =
  if isNil(roomManagerGetDebugSprawlMethodBind):
    roomManagerGetDebugSprawlMethodBind = getMethod(cstring"RoomManager",
        cstring"get_debug_sprawl")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerGetDebugSprawlMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var roomManagerSetDebugSprawlMethodBind {.threadvar.}: ptr GodotMethodBind
proc `debugSprawl=`(self: RoomManager; val: bool) =
  if isNil(roomManagerSetDebugSprawlMethodBind):
    roomManagerSetDebugSprawlMethodBind = getMethod(cstring"RoomManager",
        cstring"set_debug_sprawl")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerSetDebugSprawlMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetDefaultPortalMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc defaultPortalMargin(self: RoomManager): float64 =
  if isNil(roomManagerGetDefaultPortalMarginMethodBind):
    roomManagerGetDefaultPortalMarginMethodBind = getMethod(
        cstring"RoomManager", cstring"get_default_portal_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerGetDefaultPortalMarginMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var roomManagerSetDefaultPortalMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `defaultPortalMargin=`(self: RoomManager; val: float64) =
  if isNil(roomManagerSetDefaultPortalMarginMethodBind):
    roomManagerSetDefaultPortalMarginMethodBind = getMethod(
        cstring"RoomManager", cstring"set_default_portal_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerSetDefaultPortalMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetGameplayMonitorEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc gameplayMonitor(self: RoomManager): bool =
  if isNil(roomManagerGetGameplayMonitorEnabledMethodBind):
    roomManagerGetGameplayMonitorEnabledMethodBind = getMethod(
        cstring"RoomManager", cstring"get_gameplay_monitor_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerGetGameplayMonitorEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var roomManagerSetGameplayMonitorEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gameplayMonitor=`(self: RoomManager; val: bool) =
  if isNil(roomManagerSetGameplayMonitorEnabledMethodBind):
    roomManagerSetGameplayMonitorEnabledMethodBind = getMethod(
        cstring"RoomManager", cstring"set_gameplay_monitor_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerSetGameplayMonitorEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetMergeMeshesMethodBind {.threadvar.}: ptr GodotMethodBind
proc mergeMeshes(self: RoomManager): bool =
  if isNil(roomManagerGetMergeMeshesMethodBind):
    roomManagerGetMergeMeshesMethodBind = getMethod(cstring"RoomManager",
        cstring"get_merge_meshes")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerGetMergeMeshesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var roomManagerSetMergeMeshesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mergeMeshes=`(self: RoomManager; val: bool) =
  if isNil(roomManagerSetMergeMeshesMethodBind):
    roomManagerSetMergeMeshesMethodBind = getMethod(cstring"RoomManager",
        cstring"set_merge_meshes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerSetMergeMeshesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetOverlapWarningThresholdMethodBind {.threadvar.}: ptr GodotMethodBind
proc overlapWarningThreshold(self: RoomManager): int64 =
  if isNil(roomManagerGetOverlapWarningThresholdMethodBind):
    roomManagerGetOverlapWarningThresholdMethodBind = getMethod(
        cstring"RoomManager", cstring"get_overlap_warning_threshold")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerGetOverlapWarningThresholdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var roomManagerSetOverlapWarningThresholdMethodBind {.threadvar.}: ptr GodotMethodBind
proc `overlapWarningThreshold=`(self: RoomManager; val: int64) =
  if isNil(roomManagerSetOverlapWarningThresholdMethodBind):
    roomManagerSetOverlapWarningThresholdMethodBind = getMethod(
        cstring"RoomManager", cstring"set_overlap_warning_threshold")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerSetOverlapWarningThresholdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetPortalDepthLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc portalDepthLimit(self: RoomManager): int64 =
  if isNil(roomManagerGetPortalDepthLimitMethodBind):
    roomManagerGetPortalDepthLimitMethodBind = getMethod(cstring"RoomManager",
        cstring"get_portal_depth_limit")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerGetPortalDepthLimitMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var roomManagerSetPortalDepthLimitMethodBind {.threadvar.}: ptr GodotMethodBind
proc `portalDepthLimit=`(self: RoomManager; val: int64) =
  if isNil(roomManagerSetPortalDepthLimitMethodBind):
    roomManagerSetPortalDepthLimitMethodBind = getMethod(cstring"RoomManager",
        cstring"set_portal_depth_limit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerSetPortalDepthLimitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetPreviewCameraPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc previewCamera(self: RoomManager): NodePath =
  if isNil(roomManagerGetPreviewCameraPathMethodBind):
    roomManagerGetPreviewCameraPathMethodBind = getMethod(cstring"RoomManager",
        cstring"get_preview_camera_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  roomManagerGetPreviewCameraPathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var roomManagerSetPreviewCameraPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `previewCamera=`(self: RoomManager; val: NodePath) =
  if isNil(roomManagerSetPreviewCameraPathMethodBind):
    roomManagerSetPreviewCameraPathMethodBind = getMethod(cstring"RoomManager",
        cstring"set_preview_camera_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  roomManagerSetPreviewCameraPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetPvsModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc pvsMode(self: RoomManager): int64 =
  if isNil(roomManagerGetPvsModeMethodBind):
    roomManagerGetPvsModeMethodBind = getMethod(cstring"RoomManager",
        cstring"get_pvs_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerGetPvsModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var roomManagerSetPvsModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pvsMode=`(self: RoomManager; val: int64) =
  if isNil(roomManagerSetPvsModeMethodBind):
    roomManagerSetPvsModeMethodBind = getMethod(cstring"RoomManager",
        cstring"set_pvs_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerSetPvsModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var roomManagerGetRoamingExpansionMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc roamingExpansionMargin(self: RoomManager): float64 =
  if isNil(roomManagerGetRoamingExpansionMarginMethodBind):
    roomManagerGetRoamingExpansionMarginMethodBind = getMethod(
        cstring"RoomManager", cstring"get_roaming_expansion_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerGetRoamingExpansionMarginMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var roomManagerSetRoamingExpansionMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `roamingExpansionMargin=`(self: RoomManager; val: float64) =
  if isNil(roomManagerSetRoamingExpansionMarginMethodBind):
    roomManagerSetRoamingExpansionMarginMethodBind = getMethod(
        cstring"RoomManager", cstring"set_roaming_expansion_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerSetRoamingExpansionMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetRoomSimplifyMethodBind {.threadvar.}: ptr GodotMethodBind
proc roomSimplify(self: RoomManager): float64 =
  if isNil(roomManagerGetRoomSimplifyMethodBind):
    roomManagerGetRoomSimplifyMethodBind = getMethod(cstring"RoomManager",
        cstring"get_room_simplify")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerGetRoomSimplifyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var roomManagerSetRoomSimplifyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `roomSimplify=`(self: RoomManager; val: float64) =
  if isNil(roomManagerSetRoomSimplifyMethodBind):
    roomManagerSetRoomSimplifyMethodBind = getMethod(cstring"RoomManager",
        cstring"set_room_simplify")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerSetRoomSimplifyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetRoomlistPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc roomlist(self: RoomManager): NodePath =
  if isNil(roomManagerGetRoomlistPathMethodBind):
    roomManagerGetRoomlistPathMethodBind = getMethod(cstring"RoomManager",
        cstring"get_roomlist_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  roomManagerGetRoomlistPathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var roomManagerSetRoomlistPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `roomlist=`(self: RoomManager; val: NodePath) =
  if isNil(roomManagerSetRoomlistPathMethodBind):
    roomManagerSetRoomlistPathMethodBind = getMethod(cstring"RoomManager",
        cstring"set_roomlist_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  roomManagerSetRoomlistPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetShowMarginsMethodBind {.threadvar.}: ptr GodotMethodBind
proc showMargins(self: RoomManager): bool =
  if isNil(roomManagerGetShowMarginsMethodBind):
    roomManagerGetShowMarginsMethodBind = getMethod(cstring"RoomManager",
        cstring"get_show_margins")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerGetShowMarginsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var roomManagerSetShowMarginsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `showMargins=`(self: RoomManager; val: bool) =
  if isNil(roomManagerSetShowMarginsMethodBind):
    roomManagerSetShowMarginsMethodBind = getMethod(cstring"RoomManager",
        cstring"set_show_margins")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerSetShowMarginsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerGetUseSecondaryPvsMethodBind {.threadvar.}: ptr GodotMethodBind
proc useSecondaryPvs(self: RoomManager): bool =
  if isNil(roomManagerGetUseSecondaryPvsMethodBind):
    roomManagerGetUseSecondaryPvsMethodBind = getMethod(cstring"RoomManager",
        cstring"get_use_secondary_pvs")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomManagerGetUseSecondaryPvsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var roomManagerSetUseSecondaryPvsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useSecondaryPvs=`(self: RoomManager; val: bool) =
  if isNil(roomManagerSetUseSecondaryPvsMethodBind):
    roomManagerSetUseSecondaryPvsMethodBind = getMethod(cstring"RoomManager",
        cstring"set_use_secondary_pvs")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomManagerSetUseSecondaryPvsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var roomManagerRoomsClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc roomsClear(self: RoomManager) =
  if isNil(roomManagerRoomsClearMethodBind):
    roomManagerRoomsClearMethodBind = getMethod(cstring"RoomManager",
        cstring"rooms_clear")
  var ptrCallRet: pointer
  roomManagerRoomsClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var roomManagerRoomsConvertMethodBind {.threadvar.}: ptr GodotMethodBind
proc roomsConvert(self: RoomManager) =
  if isNil(roomManagerRoomsConvertMethodBind):
    roomManagerRoomsConvertMethodBind = getMethod(cstring"RoomManager",
        cstring"rooms_convert")
  var ptrCallRet: pointer
  roomManagerRoomsConvertMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
