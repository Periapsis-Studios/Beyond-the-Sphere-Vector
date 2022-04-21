
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc bufferView*(self: GLTFAccessor): int64 {.gcsafe, locks: 0.}
proc `bufferView=`*(self: GLTFAccessor; val: int64) {.gcsafe, locks: 0.}
proc byteOffset*(self: GLTFAccessor): int64 {.gcsafe, locks: 0.}
proc `byteOffset=`*(self: GLTFAccessor; val: int64) {.gcsafe, locks: 0.}
proc componentType*(self: GLTFAccessor): int64 {.gcsafe, locks: 0.}
proc `componentType=`*(self: GLTFAccessor; val: int64) {.gcsafe, locks: 0.}
proc count*(self: GLTFAccessor): int64 {.gcsafe, locks: 0.}
proc `count=`*(self: GLTFAccessor; val: int64) {.gcsafe, locks: 0.}
proc max*(self: GLTFAccessor): PoolRealArray {.gcsafe, locks: 0.}
proc `max=`*(self: GLTFAccessor; val: PoolRealArray) {.gcsafe, locks: 0.}
proc min*(self: GLTFAccessor): PoolRealArray {.gcsafe, locks: 0.}
proc `min=`*(self: GLTFAccessor; val: PoolRealArray) {.gcsafe, locks: 0.}
proc normalized*(self: GLTFAccessor): bool {.gcsafe, locks: 0.}
proc `normalized=`*(self: GLTFAccessor; val: bool) {.gcsafe, locks: 0.}
proc sparseCount*(self: GLTFAccessor): int64 {.gcsafe, locks: 0.}
proc `sparseCount=`*(self: GLTFAccessor; val: int64) {.gcsafe, locks: 0.}
proc sparseIndicesBufferView*(self: GLTFAccessor): int64 {.gcsafe, locks: 0.}
proc `sparseIndicesBufferView=`*(self: GLTFAccessor; val: int64) {.gcsafe,
    locks: 0.}
proc sparseIndicesByteOffset*(self: GLTFAccessor): int64 {.gcsafe, locks: 0.}
proc `sparseIndicesByteOffset=`*(self: GLTFAccessor; val: int64) {.gcsafe,
    locks: 0.}
proc sparseIndicesComponentType*(self: GLTFAccessor): int64 {.gcsafe, locks: 0.}
proc `sparseIndicesComponentType=`*(self: GLTFAccessor; val: int64) {.gcsafe,
    locks: 0.}
proc sparseValuesBufferView*(self: GLTFAccessor): int64 {.gcsafe, locks: 0.}
proc `sparseValuesBufferView=`*(self: GLTFAccessor; val: int64) {.gcsafe,
    locks: 0.}
proc sparseValuesByteOffset*(self: GLTFAccessor): int64 {.gcsafe, locks: 0.}
proc `sparseValuesByteOffset=`*(self: GLTFAccessor; val: int64) {.gcsafe,
    locks: 0.}
proc typee*(self: GLTFAccessor): int64 {.gcsafe, locks: 0.}
proc `typee=`*(self: GLTFAccessor; val: int64) {.gcsafe, locks: 0.}
var gLTFAccessorGetBufferViewMethodBind {.threadvar.}: ptr GodotMethodBind
proc bufferView(self: GLTFAccessor): int64 =
  if isNil(gLTFAccessorGetBufferViewMethodBind):
    gLTFAccessorGetBufferViewMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"get_buffer_view")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetBufferViewMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFAccessorSetBufferViewMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bufferView=`(self: GLTFAccessor; val: int64) =
  if isNil(gLTFAccessorSetBufferViewMethodBind):
    gLTFAccessorSetBufferViewMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"set_buffer_view")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetBufferViewMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFAccessorGetByteOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc byteOffset(self: GLTFAccessor): int64 =
  if isNil(gLTFAccessorGetByteOffsetMethodBind):
    gLTFAccessorGetByteOffsetMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"get_byte_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetByteOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFAccessorSetByteOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `byteOffset=`(self: GLTFAccessor; val: int64) =
  if isNil(gLTFAccessorSetByteOffsetMethodBind):
    gLTFAccessorSetByteOffsetMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"set_byte_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetByteOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFAccessorGetComponentTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc componentType(self: GLTFAccessor): int64 =
  if isNil(gLTFAccessorGetComponentTypeMethodBind):
    gLTFAccessorGetComponentTypeMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"get_component_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetComponentTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gLTFAccessorSetComponentTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `componentType=`(self: GLTFAccessor; val: int64) =
  if isNil(gLTFAccessorSetComponentTypeMethodBind):
    gLTFAccessorSetComponentTypeMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"set_component_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetComponentTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFAccessorGetCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc count(self: GLTFAccessor): int64 =
  if isNil(gLTFAccessorGetCountMethodBind):
    gLTFAccessorGetCountMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"get_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFAccessorSetCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `count=`(self: GLTFAccessor; val: int64) =
  if isNil(gLTFAccessorSetCountMethodBind):
    gLTFAccessorSetCountMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"set_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetCountMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFAccessorGetMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc max(self: GLTFAccessor): PoolRealArray =
  if isNil(gLTFAccessorGetMaxMethodBind):
    gLTFAccessorGetMaxMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"get_max")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolRealArray
  initGodotPoolRealArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFAccessorGetMaxMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolRealArray(ptrCallVal)

var gLTFAccessorSetMaxMethodBind {.threadvar.}: ptr GodotMethodBind
proc `max=`(self: GLTFAccessor; val: PoolRealArray) =
  if isNil(gLTFAccessorSetMaxMethodBind):
    gLTFAccessorSetMaxMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"set_max")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolRealArray
  var ptrCallRet: pointer
  gLTFAccessorSetMaxMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gLTFAccessorGetMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc min(self: GLTFAccessor): PoolRealArray =
  if isNil(gLTFAccessorGetMinMethodBind):
    gLTFAccessorGetMinMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"get_min")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolRealArray
  initGodotPoolRealArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFAccessorGetMinMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolRealArray(ptrCallVal)

var gLTFAccessorSetMinMethodBind {.threadvar.}: ptr GodotMethodBind
proc `min=`(self: GLTFAccessor; val: PoolRealArray) =
  if isNil(gLTFAccessorSetMinMethodBind):
    gLTFAccessorSetMinMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"set_min")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolRealArray
  var ptrCallRet: pointer
  gLTFAccessorSetMinMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gLTFAccessorGetNormalizedMethodBind {.threadvar.}: ptr GodotMethodBind
proc normalized(self: GLTFAccessor): bool =
  if isNil(gLTFAccessorGetNormalizedMethodBind):
    gLTFAccessorGetNormalizedMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"get_normalized")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetNormalizedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFAccessorSetNormalizedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normalized=`(self: GLTFAccessor; val: bool) =
  if isNil(gLTFAccessorSetNormalizedMethodBind):
    gLTFAccessorSetNormalizedMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"set_normalized")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetNormalizedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFAccessorGetSparseCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc sparseCount(self: GLTFAccessor): int64 =
  if isNil(gLTFAccessorGetSparseCountMethodBind):
    gLTFAccessorGetSparseCountMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"get_sparse_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetSparseCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFAccessorSetSparseCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sparseCount=`(self: GLTFAccessor; val: int64) =
  if isNil(gLTFAccessorSetSparseCountMethodBind):
    gLTFAccessorSetSparseCountMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"set_sparse_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetSparseCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFAccessorGetSparseIndicesBufferViewMethodBind {.threadvar.}: ptr GodotMethodBind
proc sparseIndicesBufferView(self: GLTFAccessor): int64 =
  if isNil(gLTFAccessorGetSparseIndicesBufferViewMethodBind):
    gLTFAccessorGetSparseIndicesBufferViewMethodBind = getMethod(
        cstring"GLTFAccessor", cstring"get_sparse_indices_buffer_view")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetSparseIndicesBufferViewMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var gLTFAccessorSetSparseIndicesBufferViewMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sparseIndicesBufferView=`(self: GLTFAccessor; val: int64) =
  if isNil(gLTFAccessorSetSparseIndicesBufferViewMethodBind):
    gLTFAccessorSetSparseIndicesBufferViewMethodBind = getMethod(
        cstring"GLTFAccessor", cstring"set_sparse_indices_buffer_view")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetSparseIndicesBufferViewMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFAccessorGetSparseIndicesByteOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc sparseIndicesByteOffset(self: GLTFAccessor): int64 =
  if isNil(gLTFAccessorGetSparseIndicesByteOffsetMethodBind):
    gLTFAccessorGetSparseIndicesByteOffsetMethodBind = getMethod(
        cstring"GLTFAccessor", cstring"get_sparse_indices_byte_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetSparseIndicesByteOffsetMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var gLTFAccessorSetSparseIndicesByteOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sparseIndicesByteOffset=`(self: GLTFAccessor; val: int64) =
  if isNil(gLTFAccessorSetSparseIndicesByteOffsetMethodBind):
    gLTFAccessorSetSparseIndicesByteOffsetMethodBind = getMethod(
        cstring"GLTFAccessor", cstring"set_sparse_indices_byte_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetSparseIndicesByteOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFAccessorGetSparseIndicesComponentTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc sparseIndicesComponentType(self: GLTFAccessor): int64 =
  if isNil(gLTFAccessorGetSparseIndicesComponentTypeMethodBind):
    gLTFAccessorGetSparseIndicesComponentTypeMethodBind = getMethod(
        cstring"GLTFAccessor", cstring"get_sparse_indices_component_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetSparseIndicesComponentTypeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var gLTFAccessorSetSparseIndicesComponentTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sparseIndicesComponentType=`(self: GLTFAccessor; val: int64) =
  if isNil(gLTFAccessorSetSparseIndicesComponentTypeMethodBind):
    gLTFAccessorSetSparseIndicesComponentTypeMethodBind = getMethod(
        cstring"GLTFAccessor", cstring"set_sparse_indices_component_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetSparseIndicesComponentTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFAccessorGetSparseValuesBufferViewMethodBind {.threadvar.}: ptr GodotMethodBind
proc sparseValuesBufferView(self: GLTFAccessor): int64 =
  if isNil(gLTFAccessorGetSparseValuesBufferViewMethodBind):
    gLTFAccessorGetSparseValuesBufferViewMethodBind = getMethod(
        cstring"GLTFAccessor", cstring"get_sparse_values_buffer_view")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetSparseValuesBufferViewMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gLTFAccessorSetSparseValuesBufferViewMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sparseValuesBufferView=`(self: GLTFAccessor; val: int64) =
  if isNil(gLTFAccessorSetSparseValuesBufferViewMethodBind):
    gLTFAccessorSetSparseValuesBufferViewMethodBind = getMethod(
        cstring"GLTFAccessor", cstring"set_sparse_values_buffer_view")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetSparseValuesBufferViewMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFAccessorGetSparseValuesByteOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc sparseValuesByteOffset(self: GLTFAccessor): int64 =
  if isNil(gLTFAccessorGetSparseValuesByteOffsetMethodBind):
    gLTFAccessorGetSparseValuesByteOffsetMethodBind = getMethod(
        cstring"GLTFAccessor", cstring"get_sparse_values_byte_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetSparseValuesByteOffsetMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gLTFAccessorSetSparseValuesByteOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sparseValuesByteOffset=`(self: GLTFAccessor; val: int64) =
  if isNil(gLTFAccessorSetSparseValuesByteOffsetMethodBind):
    gLTFAccessorSetSparseValuesByteOffsetMethodBind = getMethod(
        cstring"GLTFAccessor", cstring"set_sparse_values_byte_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetSparseValuesByteOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFAccessorGetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc typee(self: GLTFAccessor): int64 =
  if isNil(gLTFAccessorGetTypeMethodBind):
    gLTFAccessorGetTypeMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"get_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFAccessorGetTypeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFAccessorSetTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typee=`(self: GLTFAccessor; val: int64) =
  if isNil(gLTFAccessorSetTypeMethodBind):
    gLTFAccessorSetTypeMethodBind = getMethod(cstring"GLTFAccessor",
        cstring"set_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFAccessorSetTypeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
