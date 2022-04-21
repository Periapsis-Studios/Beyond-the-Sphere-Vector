
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc godotSkin*(self: GLTFSkin): Skin {.gcsafe, locks: 0.}
proc `godotSkin=`*(self: GLTFSkin; val: Skin) {.gcsafe, locks: 0.}
proc inverseBinds*(self: GLTFSkin): Array {.gcsafe, locks: 0.}
proc `inverseBinds=`*(self: GLTFSkin; val: Array) {.gcsafe, locks: 0.}
proc jointIToBoneI*(self: GLTFSkin): Dictionary {.gcsafe, locks: 0.}
proc `jointIToBoneI=`*(self: GLTFSkin; val: Dictionary) {.gcsafe, locks: 0.}
proc jointIToName*(self: GLTFSkin): Dictionary {.gcsafe, locks: 0.}
proc `jointIToName=`*(self: GLTFSkin; val: Dictionary) {.gcsafe, locks: 0.}
proc joints*(self: GLTFSkin): PoolIntArray {.gcsafe, locks: 0.}
proc `joints=`*(self: GLTFSkin; val: PoolIntArray) {.gcsafe, locks: 0.}
proc jointsOriginal*(self: GLTFSkin): PoolIntArray {.gcsafe, locks: 0.}
proc `jointsOriginal=`*(self: GLTFSkin; val: PoolIntArray) {.gcsafe, locks: 0.}
proc nonJoints*(self: GLTFSkin): PoolIntArray {.gcsafe, locks: 0.}
proc `nonJoints=`*(self: GLTFSkin; val: PoolIntArray) {.gcsafe, locks: 0.}
proc roots*(self: GLTFSkin): PoolIntArray {.gcsafe, locks: 0.}
proc `roots=`*(self: GLTFSkin; val: PoolIntArray) {.gcsafe, locks: 0.}
proc skeleton*(self: GLTFSkin): int64 {.gcsafe, locks: 0.}
proc `skeleton=`*(self: GLTFSkin; val: int64) {.gcsafe, locks: 0.}
proc skinRoot*(self: GLTFSkin): int64 {.gcsafe, locks: 0.}
proc `skinRoot=`*(self: GLTFSkin; val: int64) {.gcsafe, locks: 0.}
var gLTFSkinGetGodotSkinMethodBind {.threadvar.}: ptr GodotMethodBind
proc godotSkin(self: GLTFSkin): Skin =
  if isNil(gLTFSkinGetGodotSkinMethodBind):
    gLTFSkinGetGodotSkinMethodBind = getMethod(cstring"GLTFSkin",
        cstring"get_godot_skin")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  gLTFSkinGetGodotSkinMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var gLTFSkinSetGodotSkinMethodBind {.threadvar.}: ptr GodotMethodBind
proc `godotSkin=`(self: GLTFSkin; val: Skin) =
  if isNil(gLTFSkinSetGodotSkinMethodBind):
    gLTFSkinSetGodotSkinMethodBind = getMethod(cstring"GLTFSkin",
        cstring"set_godot_skin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  gLTFSkinSetGodotSkinMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFSkinGetInverseBindsMethodBind {.threadvar.}: ptr GodotMethodBind
proc inverseBinds(self: GLTFSkin): Array =
  if isNil(gLTFSkinGetInverseBindsMethodBind):
    gLTFSkinGetInverseBindsMethodBind = getMethod(cstring"GLTFSkin",
        cstring"get_inverse_binds")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFSkinGetInverseBindsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var gLTFSkinSetInverseBindsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `inverseBinds=`(self: GLTFSkin; val: Array) =
  if isNil(gLTFSkinSetInverseBindsMethodBind):
    gLTFSkinSetInverseBindsMethodBind = getMethod(cstring"GLTFSkin",
        cstring"set_inverse_binds")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  gLTFSkinSetInverseBindsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFSkinGetJointIToBoneIMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointIToBoneI(self: GLTFSkin): Dictionary =
  if isNil(gLTFSkinGetJointIToBoneIMethodBind):
    gLTFSkinGetJointIToBoneIMethodBind = getMethod(cstring"GLTFSkin",
        cstring"get_joint_i_to_bone_i")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  initGodotDictionary(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFSkinGetJointIToBoneIMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var gLTFSkinSetJointIToBoneIMethodBind {.threadvar.}: ptr GodotMethodBind
proc `jointIToBoneI=`(self: GLTFSkin; val: Dictionary) =
  if isNil(gLTFSkinSetJointIToBoneIMethodBind):
    gLTFSkinSetJointIToBoneIMethodBind = getMethod(cstring"GLTFSkin",
        cstring"set_joint_i_to_bone_i")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  gLTFSkinSetJointIToBoneIMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFSkinGetJointIToNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointIToName(self: GLTFSkin): Dictionary =
  if isNil(gLTFSkinGetJointIToNameMethodBind):
    gLTFSkinGetJointIToNameMethodBind = getMethod(cstring"GLTFSkin",
        cstring"get_joint_i_to_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  initGodotDictionary(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFSkinGetJointIToNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var gLTFSkinSetJointIToNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `jointIToName=`(self: GLTFSkin; val: Dictionary) =
  if isNil(gLTFSkinSetJointIToNameMethodBind):
    gLTFSkinSetJointIToNameMethodBind = getMethod(cstring"GLTFSkin",
        cstring"set_joint_i_to_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  gLTFSkinSetJointIToNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFSkinGetJointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc joints(self: GLTFSkin): PoolIntArray =
  if isNil(gLTFSkinGetJointsMethodBind):
    gLTFSkinGetJointsMethodBind = getMethod(cstring"GLTFSkin",
        cstring"get_joints")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  initGodotPoolIntArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFSkinGetJointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var gLTFSkinSetJointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `joints=`(self: GLTFSkin; val: PoolIntArray) =
  if isNil(gLTFSkinSetJointsMethodBind):
    gLTFSkinSetJointsMethodBind = getMethod(cstring"GLTFSkin",
        cstring"set_joints")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolIntArray
  var ptrCallRet: pointer
  gLTFSkinSetJointsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var gLTFSkinGetJointsOriginalMethodBind {.threadvar.}: ptr GodotMethodBind
proc jointsOriginal(self: GLTFSkin): PoolIntArray =
  if isNil(gLTFSkinGetJointsOriginalMethodBind):
    gLTFSkinGetJointsOriginalMethodBind = getMethod(cstring"GLTFSkin",
        cstring"get_joints_original")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  initGodotPoolIntArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFSkinGetJointsOriginalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var gLTFSkinSetJointsOriginalMethodBind {.threadvar.}: ptr GodotMethodBind
proc `jointsOriginal=`(self: GLTFSkin; val: PoolIntArray) =
  if isNil(gLTFSkinSetJointsOriginalMethodBind):
    gLTFSkinSetJointsOriginalMethodBind = getMethod(cstring"GLTFSkin",
        cstring"set_joints_original")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolIntArray
  var ptrCallRet: pointer
  gLTFSkinSetJointsOriginalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var gLTFSkinGetNonJointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc nonJoints(self: GLTFSkin): PoolIntArray =
  if isNil(gLTFSkinGetNonJointsMethodBind):
    gLTFSkinGetNonJointsMethodBind = getMethod(cstring"GLTFSkin",
        cstring"get_non_joints")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  initGodotPoolIntArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFSkinGetNonJointsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var gLTFSkinSetNonJointsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nonJoints=`(self: GLTFSkin; val: PoolIntArray) =
  if isNil(gLTFSkinSetNonJointsMethodBind):
    gLTFSkinSetNonJointsMethodBind = getMethod(cstring"GLTFSkin",
        cstring"set_non_joints")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolIntArray
  var ptrCallRet: pointer
  gLTFSkinSetNonJointsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var gLTFSkinGetRootsMethodBind {.threadvar.}: ptr GodotMethodBind
proc roots(self: GLTFSkin): PoolIntArray =
  if isNil(gLTFSkinGetRootsMethodBind):
    gLTFSkinGetRootsMethodBind = getMethod(cstring"GLTFSkin",
        cstring"get_roots")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  initGodotPoolIntArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  gLTFSkinGetRootsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var gLTFSkinSetRootsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `roots=`(self: GLTFSkin; val: PoolIntArray) =
  if isNil(gLTFSkinSetRootsMethodBind):
    gLTFSkinSetRootsMethodBind = getMethod(cstring"GLTFSkin",
        cstring"set_roots")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolIntArray
  var ptrCallRet: pointer
  gLTFSkinSetRootsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var gLTFSkinGetSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc skeleton(self: GLTFSkin): int64 =
  if isNil(gLTFSkinGetSkeletonMethodBind):
    gLTFSkinGetSkeletonMethodBind = getMethod(cstring"GLTFSkin",
        cstring"get_skeleton")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFSkinGetSkeletonMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFSkinSetSkeletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skeleton=`(self: GLTFSkin; val: int64) =
  if isNil(gLTFSkinSetSkeletonMethodBind):
    gLTFSkinSetSkeletonMethodBind = getMethod(cstring"GLTFSkin",
        cstring"set_skeleton")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFSkinSetSkeletonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var gLTFSkinGetSkinRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc skinRoot(self: GLTFSkin): int64 =
  if isNil(gLTFSkinGetSkinRootMethodBind):
    gLTFSkinGetSkinRootMethodBind = getMethod(cstring"GLTFSkin",
        cstring"get_skin_root")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  gLTFSkinGetSkinRootMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var gLTFSkinSetSkinRootMethodBind {.threadvar.}: ptr GodotMethodBind
proc `skinRoot=`(self: GLTFSkin; val: int64) =
  if isNil(gLTFSkinSetSkinRootMethodBind):
    gLTFSkinSetSkinRootMethodBind = getMethod(cstring"GLTFSkin",
        cstring"set_skin_root")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  gLTFSkinSetSkinRootMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
