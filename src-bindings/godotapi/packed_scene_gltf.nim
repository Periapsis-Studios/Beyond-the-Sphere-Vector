
import
  godot, godottypes, godotinternal, packed_scene

export
  godottypes, packed_scene

proc exportGltf*(self: PackedSceneGLTF; node: Node; path: string;
                 flags: int64 = 0'i64; bakeFps: float64 = 1000.0): Error {.
    gcsafe, locks: 0.}
proc importGltfScene*(self: PackedSceneGLTF; path: string; flags: int64 = 0'i64;
                      bakeFps: float64 = 1000.0;
                      compressFlags: int64 = 2194432'i64; state: GLTFState = nil): Node {.
    gcsafe, locks: 0.}
proc packGltf*(self: PackedSceneGLTF; path: string; flags: int64 = 0'i64;
               bakeFps: float64 = 1000.0; compressFlags: int64 = 2194432'i64;
               state: GLTFState = nil) {.gcsafe, locks: 0.}
var packedSceneGLTFExportGltfMethodBind {.threadvar.}: ptr GodotMethodBind
proc exportGltf(self: PackedSceneGLTF; node: Node; path: string;
                flags: int64 = 0'i64; bakeFps: float64 = 1000.0): Error =
  if isNil(packedSceneGLTFExportGltfMethodBind):
    packedSceneGLTFExportGltfMethodBind = getMethod(cstring"PackedSceneGLTF",
        cstring"export_gltf")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(path)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(flags)
  argsToPassToGodot[][3] = unsafeAddr(bakeFps)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  packedSceneGLTFExportGltfMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var packedSceneGLTFImportGltfSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc importGltfScene(self: PackedSceneGLTF; path: string; flags: int64 = 0'i64;
                     bakeFps: float64 = 1000.0;
                     compressFlags: int64 = 2194432'i64; state: GLTFState = nil): Node =
  if isNil(packedSceneGLTFImportGltfSceneMethodBind):
    packedSceneGLTFImportGltfSceneMethodBind = getMethod(
        cstring"PackedSceneGLTF", cstring"import_gltf_scene")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(flags)
  argsToPassToGodot[][2] = unsafeAddr(bakeFps)
  argsToPassToGodot[][3] = unsafeAddr(compressFlags)
  let argToPassToGodot4 = if not state.isNil:
    state.godotObject
  else:
    nil
  argsToPassToGodot[][4] = argToPassToGodot4
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  packedSceneGLTFImportGltfSceneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var packedSceneGLTFPackGltfMethodBind {.threadvar.}: ptr GodotMethodBind
proc packGltf(self: PackedSceneGLTF; path: string; flags: int64 = 0'i64;
              bakeFps: float64 = 1000.0; compressFlags: int64 = 2194432'i64;
              state: GLTFState = nil) =
  if isNil(packedSceneGLTFPackGltfMethodBind):
    packedSceneGLTFPackGltfMethodBind = getMethod(cstring"PackedSceneGLTF",
        cstring"pack_gltf")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(flags)
  argsToPassToGodot[][2] = unsafeAddr(bakeFps)
  argsToPassToGodot[][3] = unsafeAddr(compressFlags)
  let argToPassToGodot4 = if not state.isNil:
    state.godotObject
  else:
    nil
  argsToPassToGodot[][4] = argToPassToGodot4
  var ptrCallRet: pointer
  packedSceneGLTFPackGltfMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
