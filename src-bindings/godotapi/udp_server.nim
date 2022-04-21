
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc maxPendingConnections*(self: UDPServer): int64 {.gcsafe, locks: 0.}
proc `maxPendingConnections=`*(self: UDPServer; val: int64) {.gcsafe, locks: 0.}
proc isConnectionAvailable*(self: UDPServer): bool {.gcsafe, locks: 0.}
proc isListening*(self: UDPServer): bool {.gcsafe, locks: 0.}
proc listen*(self: UDPServer; port: int64; bindAddress: string = "*"): Error {.
    gcsafe, locks: 0.}
proc poll*(self: UDPServer): Error {.gcsafe, locks: 0.}
proc stop*(self: UDPServer) {.gcsafe, locks: 0.}
proc takeConnection*(self: UDPServer): PacketPeerUDP {.gcsafe, locks: 0.}
var uDPServerGetMaxPendingConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxPendingConnections(self: UDPServer): int64 =
  if isNil(uDPServerGetMaxPendingConnectionsMethodBind):
    uDPServerGetMaxPendingConnectionsMethodBind = getMethod(cstring"UDPServer",
        cstring"get_max_pending_connections")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uDPServerGetMaxPendingConnectionsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var uDPServerSetMaxPendingConnectionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxPendingConnections=`(self: UDPServer; val: int64) =
  if isNil(uDPServerSetMaxPendingConnectionsMethodBind):
    uDPServerSetMaxPendingConnectionsMethodBind = getMethod(cstring"UDPServer",
        cstring"set_max_pending_connections")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  uDPServerSetMaxPendingConnectionsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var uDPServerIsConnectionAvailableMethodBind {.threadvar.}: ptr GodotMethodBind
proc isConnectionAvailable(self: UDPServer): bool =
  if isNil(uDPServerIsConnectionAvailableMethodBind):
    uDPServerIsConnectionAvailableMethodBind = getMethod(cstring"UDPServer",
        cstring"is_connection_available")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uDPServerIsConnectionAvailableMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var uDPServerIsListeningMethodBind {.threadvar.}: ptr GodotMethodBind
proc isListening(self: UDPServer): bool =
  if isNil(uDPServerIsListeningMethodBind):
    uDPServerIsListeningMethodBind = getMethod(cstring"UDPServer",
        cstring"is_listening")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  uDPServerIsListeningMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var uDPServerListenMethodBind {.threadvar.}: ptr GodotMethodBind
proc listen(self: UDPServer; port: int64; bindAddress: string = "*"): Error =
  if isNil(uDPServerListenMethodBind):
    uDPServerListenMethodBind = getMethod(cstring"UDPServer", cstring"listen")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  var argToPassToGodot1 = toGodotString(bindAddress)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  uDPServerListenMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var uDPServerPollMethodBind {.threadvar.}: ptr GodotMethodBind
proc poll(self: UDPServer): Error =
  if isNil(uDPServerPollMethodBind):
    uDPServerPollMethodBind = getMethod(cstring"UDPServer", cstring"poll")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  uDPServerPollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var uDPServerStopMethodBind {.threadvar.}: ptr GodotMethodBind
proc stop(self: UDPServer) =
  if isNil(uDPServerStopMethodBind):
    uDPServerStopMethodBind = getMethod(cstring"UDPServer", cstring"stop")
  var ptrCallRet: pointer
  uDPServerStopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var uDPServerTakeConnectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc takeConnection(self: UDPServer): PacketPeerUDP =
  if isNil(uDPServerTakeConnectionMethodBind):
    uDPServerTakeConnectionMethodBind = getMethod(cstring"UDPServer",
        cstring"take_connection")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  uDPServerTakeConnectionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
