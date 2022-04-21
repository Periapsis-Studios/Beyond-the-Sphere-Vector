
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc clearCurrent*(self: Listener2D) {.gcsafe, locks: 0.}
proc isCurrent*(self: Listener2D): bool {.gcsafe, locks: 0.}
proc makeCurrent*(self: Listener2D) {.gcsafe, locks: 0.}
var listener2DClearCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearCurrent(self: Listener2D) =
  if isNil(listener2DClearCurrentMethodBind):
    listener2DClearCurrentMethodBind = getMethod(cstring"Listener2D",
        cstring"clear_current")
  var ptrCallRet: pointer
  listener2DClearCurrentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var listener2DIsCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc isCurrent(self: Listener2D): bool =
  if isNil(listener2DIsCurrentMethodBind):
    listener2DIsCurrentMethodBind = getMethod(cstring"Listener2D",
        cstring"is_current")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  listener2DIsCurrentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var listener2DMakeCurrentMethodBind {.threadvar.}: ptr GodotMethodBind
proc makeCurrent(self: Listener2D) =
  if isNil(listener2DMakeCurrentMethodBind):
    listener2DMakeCurrentMethodBind = getMethod(cstring"Listener2D",
        cstring"make_current")
  var ptrCallRet: pointer
  listener2DMakeCurrentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
