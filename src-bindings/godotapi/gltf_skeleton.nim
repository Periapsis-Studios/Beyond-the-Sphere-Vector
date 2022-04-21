
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc godotBoneNode*(self: GLTFSkeleton): Dictionary {.gcsafe, locks: 0.}
proc `godotBoneNode=`*(self: GLTFSkeleton; val: Dictionary) {.gcsafe, locks: 0.}
proc joints*(self: GLTFSkeleton): PoolIntArray {.gcsafe, locks: 0.}
proc `joints=`*(self: GLTFSkeleton; val: PoolIntArray) {.gcsafe, locks: 0.}
proc roots*(self: GLTFSkeleton): PoolIntArray {.gcsafe, locks: 0.}
proc `roots=`*(self: GLTFSkeleton; val: PoolIntArray) {.gcsafe, locks: 0.}
proc uniqueNames*(self: GLTFSkeleton): Array {.gcsafe, locks: 0.}
proc `uniqueNames=`*(self: GLTFSkeleton; val: Array) {.gcsafe, locks: 0.}
proc getBoneAttachment*(self: GLTFSkeleton; idx: int64): BoneAttachment {.
    gcsafe, locks: 0.}
proc getBoneAttachmentCount*(self: GLTFSkeleton): int64 {.gcsafe, locks: 0.}
proc getGodotSkeleton*(self: GLTFSkeleton): Skeleton {.gcsafe, locks: 0.}
var gLTFSkeletonGetGodotBoneNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc godotBoneNode(self: GLTFSkeleton): Dictionary =
  if isNil(gLTFSkeletonGetGodotBoneNodeMethodBind):
    gLTFSkeletonGetGodotBoneNodeMethodBind = getMethod(cstring"GLTFSkeleton",
        cstring"get_godot_bone_node")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  initGodotDictionary(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFSkeletonGetGodotBoneNodeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newDictionary(ptrCallVal)

var gLTFSkeletonSetGodotBoneNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `godotBoneNode=`(self: GLTFSkeleton; val: Dictionary) =
  if isNil(gLTFSkeletonSetGodotBoneNodeMethodBind):
    gLTFSkeletonSetGodotBoneNodeMethodBind = getMethod(cstring"GLTFSkeleton",
        cstring"set_godot_bone_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  gLTFSkeletonSetGodotBoneNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFSkeletonGetJointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc joints(self: GLTFSkeleton): PoolIntArray =
  if isNil(gLTFSkeletonGetJointsMethodBind):
    gLTFSkeletonGetJointsMethodBind = getMethod(cstring"GLTFSkeleton",
        cstring"get_joints")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  initGodotPoolIntArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFSkeletonGetJointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var gLTFSkeletonSetJointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `joints=`(self: GLTFSkeleton; val: PoolIntArray) =
  if isNil(gLTFSkeletonSetJointsMethodBind):
    gLTFSkeletonSetJointsMethodBind = getMethod(cstring"GLTFSkeleton",
        cstring"set_joints")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolIntArray
  var ptrCallRet: pointer
  gLTFSkeletonSetJointsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFSkeletonGetRootsMethodBind {.threadvar.}: ptr GodotMethodBind
proc roots(self: GLTFSkeleton): PoolIntArray =
  if isNil(gLTFSkeletonGetRootsMethodBind):
    gLTFSkeletonGetRootsMethodBind = getMethod(cstring"GLTFSkeleton",
        cstring"get_roots")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  initGodotPoolIntArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFSkeletonGetRootsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var gLTFSkeletonSetRootsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `roots=`(self: GLTFSkeleton; val: PoolIntArray) =
  if isNil(gLTFSkeletonSetRootsMethodBind):
    gLTFSkeletonSetRootsMethodBind = getMethod(cstring"GLTFSkeleton",
        cstring"set_roots")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolIntArray
  var ptrCallRet: pointer
  gLTFSkeletonSetRootsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFSkeletonGetUniqueNamesMethodBind {.threadvar.}: ptr GodotMethodBind
proc uniqueNames(self: GLTFSkeleton): Array =
  if isNil(gLTFSkeletonGetUniqueNamesMethodBind):
    gLTFSkeletonGetUniqueNamesMethodBind = getMethod(cstring"GLTFSkeleton",
        cstring"get_unique_names")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFSkeletonGetUniqueNamesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFSkeletonSetUniqueNamesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uniqueNames=`(self: GLTFSkeleton; val: Array) =
  if isNil(gLTFSkeletonSetUniqueNamesMethodBind):
    gLTFSkeletonSetUniqueNamesMethodBind = getMethod(cstring"GLTFSkeleton",
        cstring"set_unique_names")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFSkeletonSetUniqueNamesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFSkeletonGetBoneAttachmentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneAttachment(self: GLTFSkeleton; idx: int64): BoneAttachment =
  if isNil(gLTFSkeletonGetBoneAttachmentMethodBind):
    gLTFSkeletonGetBoneAttachmentMethodBind = getMethod(cstring"GLTFSkeleton",
        cstring"get_bone_attachment")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gLTFSkeletonGetBoneAttachmentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var gLTFSkeletonGetBoneAttachmentCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBoneAttachmentCount(self: GLTFSkeleton): int64 =
  if isNil(gLTFSkeletonGetBoneAttachmentCountMethodBind):
    gLTFSkeletonGetBoneAttachmentCountMethodBind = getMethod(
        cstring"GLTFSkeleton", cstring"get_bone_attachment_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFSkeletonGetBoneAttachmentCountMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var gLTFSkeletonGetGodotSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getGodotSkeleton(self: GLTFSkeleton): Skeleton =
  if isNil(gLTFSkeletonGetGodotSkeletonMethodBind):
    gLTFSkeletonGetGodotSkeletonMethodBind = getMethod(cstring"GLTFSkeleton",
        cstring"get_godot_skeleton")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gLTFSkeletonGetGodotSkeletonMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
