
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

const
  PORTAL_MODE_DYNAMIC* = 1'i64
  PORTAL_MODE_GLOBAL* = 3'i64
  PORTAL_MODE_IGNORE* = 4'i64
  PORTAL_MODE_ROAMING* = 2'i64
  PORTAL_MODE_STATIC* = 0'i64
proc autoplacePriority*(self: CullInstance): int64 {.gcsafe, locks: 0.}
proc `autoplacePriority=`*(self: CullInstance; val: int64) {.gcsafe, locks: 0.}
proc includeInBound*(self: CullInstance): bool {.gcsafe, locks: 0.}
proc `includeInBound=`*(self: CullInstance; val: bool) {.gcsafe, locks: 0.}
proc portalMode*(self: CullInstance): int64 {.gcsafe, locks: 0.}
proc `portalMode=`*(self: CullInstance; val: int64) {.gcsafe, locks: 0.}
var cullInstanceGetPortalAutoplacePriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoplacePriority(self: CullInstance): int64 =
  if isNil(cullInstanceGetPortalAutoplacePriorityMethodBind):
    cullInstanceGetPortalAutoplacePriorityMethodBind = getMethod(
        cstring"CullInstance", cstring"get_portal_autoplace_priority")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cullInstanceGetPortalAutoplacePriorityMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var cullInstanceSetPortalAutoplacePriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoplacePriority=`(self: CullInstance; val: int64) =
  if isNil(cullInstanceSetPortalAutoplacePriorityMethodBind):
    cullInstanceSetPortalAutoplacePriorityMethodBind = getMethod(
        cstring"CullInstance", cstring"set_portal_autoplace_priority")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cullInstanceSetPortalAutoplacePriorityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cullInstanceGetIncludeInBoundMethodBind {.threadvar.}: ptr GodotMethodBind
proc includeInBound(self: CullInstance): bool =
  if isNil(cullInstanceGetIncludeInBoundMethodBind):
    cullInstanceGetIncludeInBoundMethodBind = getMethod(cstring"CullInstance",
        cstring"get_include_in_bound")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cullInstanceGetIncludeInBoundMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cullInstanceSetIncludeInBoundMethodBind {.threadvar.}: ptr GodotMethodBind
proc `includeInBound=`(self: CullInstance; val: bool) =
  if isNil(cullInstanceSetIncludeInBoundMethodBind):
    cullInstanceSetIncludeInBoundMethodBind = getMethod(cstring"CullInstance",
        cstring"set_include_in_bound")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cullInstanceSetIncludeInBoundMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cullInstanceGetPortalModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc portalMode(self: CullInstance): int64 =
  if isNil(cullInstanceGetPortalModeMethodBind):
    cullInstanceGetPortalModeMethodBind = getMethod(cstring"CullInstance",
        cstring"get_portal_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cullInstanceGetPortalModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cullInstanceSetPortalModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `portalMode=`(self: CullInstance; val: int64) =
  if isNil(cullInstanceSetPortalModeMethodBind):
    cullInstanceSetPortalModeMethodBind = getMethod(cstring"CullInstance",
        cstring"set_portal_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cullInstanceSetPortalModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
