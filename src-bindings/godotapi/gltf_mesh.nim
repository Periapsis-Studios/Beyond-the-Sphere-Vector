
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc blendWeights*(self: GLTFMesh): PoolRealArray {.gcsafe, locks: 0.}
proc `blendWeights=`*(self: GLTFMesh; val: PoolRealArray) {.gcsafe, locks: 0.}
proc instanceMaterials*(self: GLTFMesh): Array {.gcsafe, locks: 0.}
proc `instanceMaterials=`*(self: GLTFMesh; val: Array) {.gcsafe, locks: 0.}
proc mesh*(self: GLTFMesh): ArrayMesh {.gcsafe, locks: 0.}
proc `mesh=`*(self: GLTFMesh; val: ArrayMesh) {.gcsafe, locks: 0.}
var gLTFMeshGetBlendWeightsMethodBind {.threadvar.}: ptr GodotMethodBind
proc blendWeights(self: GLTFMesh): PoolRealArray =
  if isNil(gLTFMeshGetBlendWeightsMethodBind):
    gLTFMeshGetBlendWeightsMethodBind = getMethod(cstring"GLTFMesh",
        cstring"get_blend_weights")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolRealArray
  initGodotPoolRealArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFMeshGetBlendWeightsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolRealArray(ptrCallVal)

var gLTFMeshSetBlendWeightsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `blendWeights=`(self: GLTFMesh; val: PoolRealArray) =
  if isNil(gLTFMeshSetBlendWeightsMethodBind):
    gLTFMeshSetBlendWeightsMethodBind = getMethod(cstring"GLTFMesh",
        cstring"set_blend_weights")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolRealArray
  var ptrCallRet: pointer
  gLTFMeshSetBlendWeightsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFMeshGetInstanceMaterialsMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceMaterials(self: GLTFMesh): Array =
  if isNil(gLTFMeshGetInstanceMaterialsMethodBind):
    gLTFMeshGetInstanceMaterialsMethodBind = getMethod(cstring"GLTFMesh",
        cstring"get_instance_materials")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFMeshGetInstanceMaterialsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFMeshSetInstanceMaterialsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `instanceMaterials=`(self: GLTFMesh; val: Array) =
  if isNil(gLTFMeshSetInstanceMaterialsMethodBind):
    gLTFMeshSetInstanceMaterialsMethodBind = getMethod(cstring"GLTFMesh",
        cstring"set_instance_materials")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFMeshSetInstanceMaterialsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFMeshGetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc mesh(self: GLTFMesh): ArrayMesh =
  if isNil(gLTFMeshGetMeshMethodBind):
    gLTFMeshGetMeshMethodBind = getMethod(cstring"GLTFMesh", cstring"get_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gLTFMeshGetMeshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var gLTFMeshSetMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc `mesh=`(self: GLTFMesh; val: ArrayMesh) =
  if isNil(gLTFMeshSetMeshMethodBind):
    gLTFMeshSetMeshMethodBind = getMethod(cstring"GLTFMesh", cstring"set_mesh")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  gLTFMeshSetMeshMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
