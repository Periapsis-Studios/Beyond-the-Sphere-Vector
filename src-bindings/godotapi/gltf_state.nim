
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc accessors*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `accessors=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc animations*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `animations=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc bufferViews*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `bufferViews=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc buffers*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `buffers=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc cameras*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `cameras=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc glbData*(self: GLTFState): PoolByteArray {.gcsafe, locks: 0.}
proc `glbData=`*(self: GLTFState; val: PoolByteArray) {.gcsafe, locks: 0.}
proc images*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `images=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc json*(self: GLTFState): Dictionary {.gcsafe, locks: 0.}
proc `json=`*(self: GLTFState; val: Dictionary) {.gcsafe, locks: 0.}
proc lights*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `lights=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc majorVersion*(self: GLTFState): int64 {.gcsafe, locks: 0.}
proc `majorVersion=`*(self: GLTFState; val: int64) {.gcsafe, locks: 0.}
proc materials*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `materials=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc meshes*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `meshes=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc minorVersion*(self: GLTFState): int64 {.gcsafe, locks: 0.}
proc `minorVersion=`*(self: GLTFState; val: int64) {.gcsafe, locks: 0.}
proc nodes*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `nodes=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc rootNodes*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `rootNodes=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc sceneName*(self: GLTFState): string {.gcsafe, locks: 0.}
proc `sceneName=`*(self: GLTFState; val: string) {.gcsafe, locks: 0.}
proc skeletonToNode*(self: GLTFState): Dictionary {.gcsafe, locks: 0.}
proc `skeletonToNode=`*(self: GLTFState; val: Dictionary) {.gcsafe, locks: 0.}
proc skeletons*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `skeletons=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc skins*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `skins=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc textures*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `textures=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc uniqueAnimationNames*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `uniqueAnimationNames=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc uniqueNames*(self: GLTFState): Array {.gcsafe, locks: 0.}
proc `uniqueNames=`*(self: GLTFState; val: Array) {.gcsafe, locks: 0.}
proc useNamedSkinBinds*(self: GLTFState): bool {.gcsafe, locks: 0.}
proc `useNamedSkinBinds=`*(self: GLTFState; val: bool) {.gcsafe, locks: 0.}
proc getAnimationPlayer*(self: GLTFState; idx: int64): AnimationPlayer {.gcsafe,
    locks: 0.}
proc getAnimationPlayersCount*(self: GLTFState; idx: int64): int64 {.gcsafe,
    locks: 0.}
proc getSceneNode*(self: GLTFState; idx: int64): Node {.gcsafe, locks: 0.}
var gLTFStateGetAccessorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc accessors(self: GLTFState): Array =
  if isNil(gLTFStateGetAccessorsMethodBind):
    gLTFStateGetAccessorsMethodBind = getMethod(cstring"GLTFState",
        cstring"get_accessors")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetAccessorsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetAccessorsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `accessors=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetAccessorsMethodBind):
    gLTFStateSetAccessorsMethodBind = getMethod(cstring"GLTFState",
        cstring"set_accessors")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetAccessorsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFStateGetAnimationsMethodBind {.threadvar.}: ptr GodotMethodBind
proc animations(self: GLTFState): Array =
  if isNil(gLTFStateGetAnimationsMethodBind):
    gLTFStateGetAnimationsMethodBind = getMethod(cstring"GLTFState",
        cstring"get_animations")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetAnimationsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetAnimationsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `animations=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetAnimationsMethodBind):
    gLTFStateSetAnimationsMethodBind = getMethod(cstring"GLTFState",
        cstring"set_animations")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetAnimationsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFStateGetBufferViewsMethodBind {.threadvar.}: ptr GodotMethodBind
proc bufferViews(self: GLTFState): Array =
  if isNil(gLTFStateGetBufferViewsMethodBind):
    gLTFStateGetBufferViewsMethodBind = getMethod(cstring"GLTFState",
        cstring"get_buffer_views")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetBufferViewsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetBufferViewsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bufferViews=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetBufferViewsMethodBind):
    gLTFStateSetBufferViewsMethodBind = getMethod(cstring"GLTFState",
        cstring"set_buffer_views")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetBufferViewsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFStateGetBuffersMethodBind {.threadvar.}: ptr GodotMethodBind
proc buffers(self: GLTFState): Array =
  if isNil(gLTFStateGetBuffersMethodBind):
    gLTFStateGetBuffersMethodBind = getMethod(cstring"GLTFState",
        cstring"get_buffers")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetBuffersMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetBuffersMethodBind {.threadvar.}: ptr GodotMethodBind
proc `buffers=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetBuffersMethodBind):
    gLTFStateSetBuffersMethodBind = getMethod(cstring"GLTFState",
        cstring"set_buffers")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetBuffersMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var gLTFStateGetCamerasMethodBind {.threadvar.}: ptr GodotMethodBind
proc cameras(self: GLTFState): Array =
  if isNil(gLTFStateGetCamerasMethodBind):
    gLTFStateGetCamerasMethodBind = getMethod(cstring"GLTFState",
        cstring"get_cameras")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetCamerasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetCamerasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cameras=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetCamerasMethodBind):
    gLTFStateSetCamerasMethodBind = getMethod(cstring"GLTFState",
        cstring"set_cameras")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetCamerasMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var gLTFStateGetGlbDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc glbData(self: GLTFState): PoolByteArray =
  if isNil(gLTFStateGetGlbDataMethodBind):
    gLTFStateGetGlbDataMethodBind = getMethod(cstring"GLTFState",
        cstring"get_glb_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  initGodotPoolByteArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetGlbDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var gLTFStateSetGlbDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `glbData=`(self: GLTFState; val: PoolByteArray) =
  if isNil(gLTFStateSetGlbDataMethodBind):
    gLTFStateSetGlbDataMethodBind = getMethod(cstring"GLTFState",
        cstring"set_glb_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolByteArray
  var ptrCallRet: pointer
  gLTFStateSetGlbDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var gLTFStateGetImagesMethodBind {.threadvar.}: ptr GodotMethodBind
proc images(self: GLTFState): Array =
  if isNil(gLTFStateGetImagesMethodBind):
    gLTFStateGetImagesMethodBind = getMethod(cstring"GLTFState",
        cstring"get_images")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetImagesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetImagesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `images=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetImagesMethodBind):
    gLTFStateSetImagesMethodBind = getMethod(cstring"GLTFState",
        cstring"set_images")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetImagesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gLTFStateGetJsonMethodBind {.threadvar.}: ptr GodotMethodBind
proc json(self: GLTFState): Dictionary =
  if isNil(gLTFStateGetJsonMethodBind):
    gLTFStateGetJsonMethodBind = getMethod(cstring"GLTFState",
        cstring"get_json")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  initGodotDictionary(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetJsonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var gLTFStateSetJsonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `json=`(self: GLTFState; val: Dictionary) =
  if isNil(gLTFStateSetJsonMethodBind):
    gLTFStateSetJsonMethodBind = getMethod(cstring"GLTFState",
        cstring"set_json")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  gLTFStateSetJsonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var gLTFStateGetLightsMethodBind {.threadvar.}: ptr GodotMethodBind
proc lights(self: GLTFState): Array =
  if isNil(gLTFStateGetLightsMethodBind):
    gLTFStateGetLightsMethodBind = getMethod(cstring"GLTFState",
        cstring"get_lights")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetLightsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetLightsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lights=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetLightsMethodBind):
    gLTFStateSetLightsMethodBind = getMethod(cstring"GLTFState",
        cstring"set_lights")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetLightsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gLTFStateGetMajorVersionMethodBind {.threadvar.}: ptr GodotMethodBind
proc majorVersion(self: GLTFState): int64 =
  if isNil(gLTFStateGetMajorVersionMethodBind):
    gLTFStateGetMajorVersionMethodBind = getMethod(cstring"GLTFState",
        cstring"get_major_version")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFStateGetMajorVersionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFStateSetMajorVersionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `majorVersion=`(self: GLTFState; val: int64) =
  if isNil(gLTFStateSetMajorVersionMethodBind):
    gLTFStateSetMajorVersionMethodBind = getMethod(cstring"GLTFState",
        cstring"set_major_version")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFStateSetMajorVersionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFStateGetMaterialsMethodBind {.threadvar.}: ptr GodotMethodBind
proc materials(self: GLTFState): Array =
  if isNil(gLTFStateGetMaterialsMethodBind):
    gLTFStateGetMaterialsMethodBind = getMethod(cstring"GLTFState",
        cstring"get_materials")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetMaterialsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetMaterialsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `materials=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetMaterialsMethodBind):
    gLTFStateSetMaterialsMethodBind = getMethod(cstring"GLTFState",
        cstring"set_materials")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetMaterialsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFStateGetMeshesMethodBind {.threadvar.}: ptr GodotMethodBind
proc meshes(self: GLTFState): Array =
  if isNil(gLTFStateGetMeshesMethodBind):
    gLTFStateGetMeshesMethodBind = getMethod(cstring"GLTFState",
        cstring"get_meshes")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetMeshesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetMeshesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `meshes=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetMeshesMethodBind):
    gLTFStateSetMeshesMethodBind = getMethod(cstring"GLTFState",
        cstring"set_meshes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetMeshesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var gLTFStateGetMinorVersionMethodBind {.threadvar.}: ptr GodotMethodBind
proc minorVersion(self: GLTFState): int64 =
  if isNil(gLTFStateGetMinorVersionMethodBind):
    gLTFStateGetMinorVersionMethodBind = getMethod(cstring"GLTFState",
        cstring"get_minor_version")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFStateGetMinorVersionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFStateSetMinorVersionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `minorVersion=`(self: GLTFState; val: int64) =
  if isNil(gLTFStateSetMinorVersionMethodBind):
    gLTFStateSetMinorVersionMethodBind = getMethod(cstring"GLTFState",
        cstring"set_minor_version")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFStateSetMinorVersionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFStateGetNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodes(self: GLTFState): Array =
  if isNil(gLTFStateGetNodesMethodBind):
    gLTFStateGetNodesMethodBind = getMethod(cstring"GLTFState",
        cstring"get_nodes")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetNodesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nodes=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetNodesMethodBind):
    gLTFStateSetNodesMethodBind = getMethod(cstring"GLTFState",
        cstring"set_nodes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetNodesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gLTFStateGetRootNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc rootNodes(self: GLTFState): Array =
  if isNil(gLTFStateGetRootNodesMethodBind):
    gLTFStateGetRootNodesMethodBind = getMethod(cstring"GLTFState",
        cstring"get_root_nodes")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetRootNodesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetRootNodesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rootNodes=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetRootNodesMethodBind):
    gLTFStateSetRootNodesMethodBind = getMethod(cstring"GLTFState",
        cstring"set_root_nodes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetRootNodesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFStateGetSceneNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc sceneName(self: GLTFState): string =
  if isNil(gLTFStateGetSceneNameMethodBind):
    gLTFStateGetSceneNameMethodBind = getMethod(cstring"GLTFState",
        cstring"get_scene_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetSceneNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var gLTFStateSetSceneNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sceneName=`(self: GLTFState; val: string) =
  if isNil(gLTFStateSetSceneNameMethodBind):
    gLTFStateSetSceneNameMethodBind = getMethod(cstring"GLTFState",
        cstring"set_scene_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  gLTFStateSetSceneNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var gLTFStateGetSkeletonToNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeletonToNode(self: GLTFState): Dictionary =
  if isNil(gLTFStateGetSkeletonToNodeMethodBind):
    gLTFStateGetSkeletonToNodeMethodBind = getMethod(cstring"GLTFState",
        cstring"get_skeleton_to_node")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  initGodotDictionary(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetSkeletonToNodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var gLTFStateSetSkeletonToNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skeletonToNode=`(self: GLTFState; val: Dictionary) =
  if isNil(gLTFStateSetSkeletonToNodeMethodBind):
    gLTFStateSetSkeletonToNodeMethodBind = getMethod(cstring"GLTFState",
        cstring"set_skeleton_to_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  gLTFStateSetSkeletonToNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFStateGetSkeletonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeletons(self: GLTFState): Array =
  if isNil(gLTFStateGetSkeletonsMethodBind):
    gLTFStateGetSkeletonsMethodBind = getMethod(cstring"GLTFState",
        cstring"get_skeletons")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetSkeletonsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetSkeletonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skeletons=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetSkeletonsMethodBind):
    gLTFStateSetSkeletonsMethodBind = getMethod(cstring"GLTFState",
        cstring"set_skeletons")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetSkeletonsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFStateGetSkinsMethodBind {.threadvar.}: ptr GodotMethodBind
proc skins(self: GLTFState): Array =
  if isNil(gLTFStateGetSkinsMethodBind):
    gLTFStateGetSkinsMethodBind = getMethod(cstring"GLTFState",
        cstring"get_skins")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetSkinsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetSkinsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skins=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetSkinsMethodBind):
    gLTFStateSetSkinsMethodBind = getMethod(cstring"GLTFState",
        cstring"set_skins")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetSkinsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gLTFStateGetTexturesMethodBind {.threadvar.}: ptr GodotMethodBind
proc textures(self: GLTFState): Array =
  if isNil(gLTFStateGetTexturesMethodBind):
    gLTFStateGetTexturesMethodBind = getMethod(cstring"GLTFState",
        cstring"get_textures")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetTexturesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetTexturesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `textures=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetTexturesMethodBind):
    gLTFStateSetTexturesMethodBind = getMethod(cstring"GLTFState",
        cstring"set_textures")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetTexturesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFStateGetUniqueAnimationNamesMethodBind {.threadvar.}: ptr GodotMethodBind
proc uniqueAnimationNames(self: GLTFState): Array =
  if isNil(gLTFStateGetUniqueAnimationNamesMethodBind):
    gLTFStateGetUniqueAnimationNamesMethodBind = getMethod(cstring"GLTFState",
        cstring"get_unique_animation_names")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetUniqueAnimationNamesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetUniqueAnimationNamesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uniqueAnimationNames=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetUniqueAnimationNamesMethodBind):
    gLTFStateSetUniqueAnimationNamesMethodBind = getMethod(cstring"GLTFState",
        cstring"set_unique_animation_names")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetUniqueAnimationNamesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFStateGetUniqueNamesMethodBind {.threadvar.}: ptr GodotMethodBind
proc uniqueNames(self: GLTFState): Array =
  if isNil(gLTFStateGetUniqueNamesMethodBind):
    gLTFStateGetUniqueNamesMethodBind = getMethod(cstring"GLTFState",
        cstring"get_unique_names")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetUniqueNamesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFStateSetUniqueNamesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uniqueNames=`(self: GLTFState; val: Array) =
  if isNil(gLTFStateSetUniqueNamesMethodBind):
    gLTFStateSetUniqueNamesMethodBind = getMethod(cstring"GLTFState",
        cstring"set_unique_names")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFStateSetUniqueNamesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFStateGetUseNamedSkinBindsMethodBind {.threadvar.}: ptr GodotMethodBind
proc useNamedSkinBinds(self: GLTFState): bool =
  if isNil(gLTFStateGetUseNamedSkinBindsMethodBind):
    gLTFStateGetUseNamedSkinBindsMethodBind = getMethod(cstring"GLTFState",
        cstring"get_use_named_skin_binds")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFStateGetUseNamedSkinBindsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gLTFStateSetUseNamedSkinBindsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useNamedSkinBinds=`(self: GLTFState; val: bool) =
  if isNil(gLTFStateSetUseNamedSkinBindsMethodBind):
    gLTFStateSetUseNamedSkinBindsMethodBind = getMethod(cstring"GLTFState",
        cstring"set_use_named_skin_binds")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFStateSetUseNamedSkinBindsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFStateGetAnimationPlayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAnimationPlayer(self: GLTFState; idx: int64): AnimationPlayer =
  if isNil(gLTFStateGetAnimationPlayerMethodBind):
    gLTFStateGetAnimationPlayerMethodBind = getMethod(cstring"GLTFState",
        cstring"get_animation_player")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetAnimationPlayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var gLTFStateGetAnimationPlayersCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAnimationPlayersCount(self: GLTFState; idx: int64): int64 =
  if isNil(gLTFStateGetAnimationPlayersCountMethodBind):
    gLTFStateGetAnimationPlayersCountMethodBind = getMethod(cstring"GLTFState",
        cstring"get_animation_players_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFStateGetAnimationPlayersCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFStateGetSceneNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSceneNode(self: GLTFState; idx: int64): Node =
  if isNil(gLTFStateGetSceneNodeMethodBind):
    gLTFStateGetSceneNodeMethodBind = getMethod(cstring"GLTFState",
        cstring"get_scene_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gLTFStateGetSceneNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
