
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc roomgroupPriority*(self: RoomGroup): int64 {.gcsafe, locks: 0.}
proc `roomgroupPriority=`*(self: RoomGroup; val: int64) {.gcsafe, locks: 0.}
var roomGroupGetRoomgroupPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc roomgroupPriority(self: RoomGroup): int64 =
  if isNil(roomGroupGetRoomgroupPriorityMethodBind):
    roomGroupGetRoomgroupPriorityMethodBind = getMethod(cstring"RoomGroup",
        cstring"get_roomgroup_priority")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  roomGroupGetRoomgroupPriorityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var roomGroupSetRoomgroupPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `roomgroupPriority=`(self: RoomGroup; val: int64) =
  if isNil(roomGroupSetRoomgroupPriorityMethodBind):
    roomGroupSetRoomgroupPriorityMethodBind = getMethod(cstring"RoomGroup",
        cstring"set_roomgroup_priority")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  roomGroupSetRoomgroupPriorityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
