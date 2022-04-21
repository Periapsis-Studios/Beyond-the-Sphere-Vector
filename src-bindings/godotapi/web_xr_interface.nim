
import
  godot, godottypes, godotinternal, arvr_interface

export
  godottypes, arvr_interface

proc boundsGeometry*(self: WebXRInterface): PoolVector3Array {.gcsafe, locks: 0.}
proc `boundsGeometry=`*(self: WebXRInterface; val: PoolVector3Array) {.gcsafe,
    locks: 0.}
proc optionalFeatures*(self: WebXRInterface): string {.gcsafe, locks: 0.}
proc `optionalFeatures=`*(self: WebXRInterface; val: string) {.gcsafe, locks: 0.}
proc referenceSpaceType*(self: WebXRInterface): string {.gcsafe, locks: 0.}
proc `referenceSpaceType=`*(self: WebXRInterface; val: string) {.gcsafe,
    locks: 0.}
proc requestedReferenceSpaceTypes*(self: WebXRInterface): string {.gcsafe,
    locks: 0.}
proc `requestedReferenceSpaceTypes=`*(self: WebXRInterface; val: string) {.
    gcsafe, locks: 0.}
proc requiredFeatures*(self: WebXRInterface): string {.gcsafe, locks: 0.}
proc `requiredFeatures=`*(self: WebXRInterface; val: string) {.gcsafe, locks: 0.}
proc sessionMode*(self: WebXRInterface): string {.gcsafe, locks: 0.}
proc `sessionMode=`*(self: WebXRInterface; val: string) {.gcsafe, locks: 0.}
proc visibilityState*(self: WebXRInterface): string {.gcsafe, locks: 0.}
proc `visibilityState=`*(self: WebXRInterface; val: string) {.gcsafe, locks: 0.}
proc getController*(self: WebXRInterface; controllerId: int64): ARVRPositionalTracker {.
    gcsafe, locks: 0.}
proc isSessionSupported*(self: WebXRInterface; sessionMode: string) {.gcsafe,
    locks: 0.}
var webXRInterfaceGetBoundsGeometryMethodBind {.threadvar.}: ptr GodotMethodBind
proc boundsGeometry(self: WebXRInterface): PoolVector3Array =
  if isNil(webXRInterfaceGetBoundsGeometryMethodBind):
    webXRInterfaceGetBoundsGeometryMethodBind = getMethod(
        cstring"WebXRInterface", cstring"get_bounds_geometry")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolVector3Array
  initGodotPoolVector3Array(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  webXRInterfaceGetBoundsGeometryMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolVector3Array(ptrCallVal)

var webXRInterfaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `boundsGeometry=`(self: WebXRInterface; val: PoolVector3Array) =
  if isNil(webXRInterfaceMethodBind):
    webXRInterfaceMethodBind = getMethod(cstring"WebXRInterface", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolVector3Array
  var ptrCallRet: pointer
  webXRInterfaceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                   ptrCallRet)

var webXRInterfaceGetOptionalFeaturesMethodBind {.threadvar.}: ptr GodotMethodBind
proc optionalFeatures(self: WebXRInterface): string =
  if isNil(webXRInterfaceGetOptionalFeaturesMethodBind):
    webXRInterfaceGetOptionalFeaturesMethodBind = getMethod(
        cstring"WebXRInterface", cstring"get_optional_features")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webXRInterfaceGetOptionalFeaturesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var webXRInterfaceSetOptionalFeaturesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `optionalFeatures=`(self: WebXRInterface; val: string) =
  if isNil(webXRInterfaceSetOptionalFeaturesMethodBind):
    webXRInterfaceSetOptionalFeaturesMethodBind = getMethod(
        cstring"WebXRInterface", cstring"set_optional_features")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  webXRInterfaceSetOptionalFeaturesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var webXRInterfaceGetReferenceSpaceTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc referenceSpaceType(self: WebXRInterface): string =
  if isNil(webXRInterfaceGetReferenceSpaceTypeMethodBind):
    webXRInterfaceGetReferenceSpaceTypeMethodBind = getMethod(
        cstring"WebXRInterface", cstring"get_reference_space_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webXRInterfaceGetReferenceSpaceTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

proc `referenceSpaceType=`(self: WebXRInterface; val: string) =
  if isNil(webXRInterfaceMethodBind):
    webXRInterfaceMethodBind = getMethod(cstring"WebXRInterface", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  webXRInterfaceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                   ptrCallRet)
  deinit(argToPassToGodot0)

var webXRInterfaceGetRequestedReferenceSpaceTypesMethodBind {.threadvar.}: ptr GodotMethodBind
proc requestedReferenceSpaceTypes(self: WebXRInterface): string =
  if isNil(webXRInterfaceGetRequestedReferenceSpaceTypesMethodBind):
    webXRInterfaceGetRequestedReferenceSpaceTypesMethodBind = getMethod(
        cstring"WebXRInterface", cstring"get_requested_reference_space_types")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webXRInterfaceGetRequestedReferenceSpaceTypesMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var webXRInterfaceSetRequestedReferenceSpaceTypesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `requestedReferenceSpaceTypes=`(self: WebXRInterface; val: string) =
  if isNil(webXRInterfaceSetRequestedReferenceSpaceTypesMethodBind):
    webXRInterfaceSetRequestedReferenceSpaceTypesMethodBind = getMethod(
        cstring"WebXRInterface", cstring"set_requested_reference_space_types")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  webXRInterfaceSetRequestedReferenceSpaceTypesMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var webXRInterfaceGetRequiredFeaturesMethodBind {.threadvar.}: ptr GodotMethodBind
proc requiredFeatures(self: WebXRInterface): string =
  if isNil(webXRInterfaceGetRequiredFeaturesMethodBind):
    webXRInterfaceGetRequiredFeaturesMethodBind = getMethod(
        cstring"WebXRInterface", cstring"get_required_features")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webXRInterfaceGetRequiredFeaturesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var webXRInterfaceSetRequiredFeaturesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `requiredFeatures=`(self: WebXRInterface; val: string) =
  if isNil(webXRInterfaceSetRequiredFeaturesMethodBind):
    webXRInterfaceSetRequiredFeaturesMethodBind = getMethod(
        cstring"WebXRInterface", cstring"set_required_features")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  webXRInterfaceSetRequiredFeaturesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var webXRInterfaceGetSessionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc sessionMode(self: WebXRInterface): string =
  if isNil(webXRInterfaceGetSessionModeMethodBind):
    webXRInterfaceGetSessionModeMethodBind = getMethod(cstring"WebXRInterface",
        cstring"get_session_mode")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webXRInterfaceGetSessionModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var webXRInterfaceSetSessionModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sessionMode=`(self: WebXRInterface; val: string) =
  if isNil(webXRInterfaceSetSessionModeMethodBind):
    webXRInterfaceSetSessionModeMethodBind = getMethod(cstring"WebXRInterface",
        cstring"set_session_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  webXRInterfaceSetSessionModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var webXRInterfaceGetVisibilityStateMethodBind {.threadvar.}: ptr GodotMethodBind
proc visibilityState(self: WebXRInterface): string =
  if isNil(webXRInterfaceGetVisibilityStateMethodBind):
    webXRInterfaceGetVisibilityStateMethodBind = getMethod(
        cstring"WebXRInterface", cstring"get_visibility_state")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  webXRInterfaceGetVisibilityStateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

proc `visibilityState=`(self: WebXRInterface; val: string) =
  if isNil(webXRInterfaceMethodBind):
    webXRInterfaceMethodBind = getMethod(cstring"WebXRInterface", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  webXRInterfaceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                   ptrCallRet)
  deinit(argToPassToGodot0)

var webXRInterfaceGetControllerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getController(self: WebXRInterface; controllerId: int64): ARVRPositionalTracker =
  if isNil(webXRInterfaceGetControllerMethodBind):
    webXRInterfaceGetControllerMethodBind = getMethod(cstring"WebXRInterface",
        cstring"get_controller")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(controllerId)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  webXRInterfaceGetControllerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var webXRInterfaceIsSessionSupportedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isSessionSupported(self: WebXRInterface; sessionMode: string) =
  if isNil(webXRInterfaceIsSessionSupportedMethodBind):
    webXRInterfaceIsSessionSupportedMethodBind = getMethod(
        cstring"WebXRInterface", cstring"is_session_supported")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(sessionMode)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  webXRInterfaceIsSessionSupportedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
