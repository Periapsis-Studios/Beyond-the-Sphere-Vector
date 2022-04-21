
import
  godot, godottypes, godotinternal, container

export
  godottypes, container

const
  ALIGN_BEGIN* = 0'i64
  ALIGN_CENTER* = 1'i64
  ALIGN_END* = 2'i64
  STRETCH_COVER* = 3'i64
  STRETCH_FIT* = 2'i64
  STRETCH_HEIGHT_CONTROLS_WIDTH* = 1'i64
  STRETCH_WIDTH_CONTROLS_HEIGHT* = 0'i64
proc alignmentHorizontal*(self: AspectRatioContainer): int64 {.gcsafe, locks: 0.}
proc `alignmentHorizontal=`*(self: AspectRatioContainer; val: int64) {.gcsafe,
    locks: 0.}
proc alignmentVertical*(self: AspectRatioContainer): int64 {.gcsafe, locks: 0.}
proc `alignmentVertical=`*(self: AspectRatioContainer; val: int64) {.gcsafe,
    locks: 0.}
proc ratio*(self: AspectRatioContainer): float64 {.gcsafe, locks: 0.}
proc `ratio=`*(self: AspectRatioContainer; val: float64) {.gcsafe, locks: 0.}
proc stretchMode*(self: AspectRatioContainer): int64 {.gcsafe, locks: 0.}
proc `stretchMode=`*(self: AspectRatioContainer; val: int64) {.gcsafe, locks: 0.}
var aspectRatioContainerGetAlignmentHorizontalMethodBind {.threadvar.}: ptr GodotMethodBind
proc alignmentHorizontal(self: AspectRatioContainer): int64 =
  if isNil(aspectRatioContainerGetAlignmentHorizontalMethodBind):
    aspectRatioContainerGetAlignmentHorizontalMethodBind = getMethod(
        cstring"AspectRatioContainer", cstring"get_alignment_horizontal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aspectRatioContainerGetAlignmentHorizontalMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var aspectRatioContainerSetAlignmentHorizontalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `alignmentHorizontal=`(self: AspectRatioContainer; val: int64) =
  if isNil(aspectRatioContainerSetAlignmentHorizontalMethodBind):
    aspectRatioContainerSetAlignmentHorizontalMethodBind = getMethod(
        cstring"AspectRatioContainer", cstring"set_alignment_horizontal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aspectRatioContainerSetAlignmentHorizontalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aspectRatioContainerGetAlignmentVerticalMethodBind {.threadvar.}: ptr GodotMethodBind
proc alignmentVertical(self: AspectRatioContainer): int64 =
  if isNil(aspectRatioContainerGetAlignmentVerticalMethodBind):
    aspectRatioContainerGetAlignmentVerticalMethodBind = getMethod(
        cstring"AspectRatioContainer", cstring"get_alignment_vertical")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aspectRatioContainerGetAlignmentVerticalMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var aspectRatioContainerSetAlignmentVerticalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `alignmentVertical=`(self: AspectRatioContainer; val: int64) =
  if isNil(aspectRatioContainerSetAlignmentVerticalMethodBind):
    aspectRatioContainerSetAlignmentVerticalMethodBind = getMethod(
        cstring"AspectRatioContainer", cstring"set_alignment_vertical")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aspectRatioContainerSetAlignmentVerticalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aspectRatioContainerGetRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc ratio(self: AspectRatioContainer): float64 =
  if isNil(aspectRatioContainerGetRatioMethodBind):
    aspectRatioContainerGetRatioMethodBind = getMethod(
        cstring"AspectRatioContainer", cstring"get_ratio")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aspectRatioContainerGetRatioMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var aspectRatioContainerSetRatioMethodBind {.threadvar.}: ptr GodotMethodBind
proc `ratio=`(self: AspectRatioContainer; val: float64) =
  if isNil(aspectRatioContainerSetRatioMethodBind):
    aspectRatioContainerSetRatioMethodBind = getMethod(
        cstring"AspectRatioContainer", cstring"set_ratio")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aspectRatioContainerSetRatioMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var aspectRatioContainerGetStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc stretchMode(self: AspectRatioContainer): int64 =
  if isNil(aspectRatioContainerGetStretchModeMethodBind):
    aspectRatioContainerGetStretchModeMethodBind = getMethod(
        cstring"AspectRatioContainer", cstring"get_stretch_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  aspectRatioContainerGetStretchModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var aspectRatioContainerSetStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `stretchMode=`(self: AspectRatioContainer; val: int64) =
  if isNil(aspectRatioContainerSetStretchModeMethodBind):
    aspectRatioContainerSetStretchModeMethodBind = getMethod(
        cstring"AspectRatioContainer", cstring"set_stretch_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  aspectRatioContainerSetStretchModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
