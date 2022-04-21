
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc collider*(self: PhysicsTestMotionResult): Object {.gcsafe, locks: 0.}
proc `collider=`*(self: PhysicsTestMotionResult; val: Object) {.gcsafe, locks: 0.}
proc colliderId*(self: PhysicsTestMotionResult): int64 {.gcsafe, locks: 0.}
proc `colliderId=`*(self: PhysicsTestMotionResult; val: int64) {.gcsafe,
    locks: 0.}
proc colliderRid*(self: PhysicsTestMotionResult): RID {.gcsafe, locks: 0.}
proc `colliderRid=`*(self: PhysicsTestMotionResult; val: RID) {.gcsafe, locks: 0.}
proc colliderShape*(self: PhysicsTestMotionResult): int64 {.gcsafe, locks: 0.}
proc `colliderShape=`*(self: PhysicsTestMotionResult; val: int64) {.gcsafe,
    locks: 0.}
proc colliderVelocity*(self: PhysicsTestMotionResult): Vector3 {.gcsafe,
    locks: 0.}
proc `colliderVelocity=`*(self: PhysicsTestMotionResult; val: Vector3) {.gcsafe,
    locks: 0.}
proc collisionDepth*(self: PhysicsTestMotionResult): float64 {.gcsafe, locks: 0.}
proc `collisionDepth=`*(self: PhysicsTestMotionResult; val: float64) {.gcsafe,
    locks: 0.}
proc collisionNormal*(self: PhysicsTestMotionResult): Vector3 {.gcsafe, locks: 0.}
proc `collisionNormal=`*(self: PhysicsTestMotionResult; val: Vector3) {.gcsafe,
    locks: 0.}
proc collisionPoint*(self: PhysicsTestMotionResult): Vector3 {.gcsafe, locks: 0.}
proc `collisionPoint=`*(self: PhysicsTestMotionResult; val: Vector3) {.gcsafe,
    locks: 0.}
proc collisionSafeFraction*(self: PhysicsTestMotionResult): float64 {.gcsafe,
    locks: 0.}
proc `collisionSafeFraction=`*(self: PhysicsTestMotionResult; val: float64) {.
    gcsafe, locks: 0.}
proc collisionUnsafeFraction*(self: PhysicsTestMotionResult): float64 {.gcsafe,
    locks: 0.}
proc `collisionUnsafeFraction=`*(self: PhysicsTestMotionResult; val: float64) {.
    gcsafe, locks: 0.}
proc motion*(self: PhysicsTestMotionResult): Vector3 {.gcsafe, locks: 0.}
proc `motion=`*(self: PhysicsTestMotionResult; val: Vector3) {.gcsafe, locks: 0.}
proc motionRemainder*(self: PhysicsTestMotionResult): Vector3 {.gcsafe, locks: 0.}
proc `motionRemainder=`*(self: PhysicsTestMotionResult; val: Vector3) {.gcsafe,
    locks: 0.}
var physicsTestMotionResultGetColliderMethodBind {.threadvar.}: ptr GodotMethodBind
proc collider(self: PhysicsTestMotionResult): Object =
  if isNil(physicsTestMotionResultGetColliderMethodBind):
    physicsTestMotionResultGetColliderMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"get_collider")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  physicsTestMotionResultGetColliderMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var physicsTestMotionResultMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collider=`(self: PhysicsTestMotionResult; val: Object) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsTestMotionResultGetColliderIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderId(self: PhysicsTestMotionResult): int64 =
  if isNil(physicsTestMotionResultGetColliderIdMethodBind):
    physicsTestMotionResultGetColliderIdMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"get_collider_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsTestMotionResultGetColliderIdMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `colliderId=`(self: PhysicsTestMotionResult; val: int64) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsTestMotionResultGetColliderRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderRid(self: PhysicsTestMotionResult): RID =
  if isNil(physicsTestMotionResultGetColliderRidMethodBind):
    physicsTestMotionResultGetColliderRidMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"get_collider_rid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsTestMotionResultGetColliderRidMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `colliderRid=`(self: PhysicsTestMotionResult; val: RID) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsTestMotionResultGetColliderShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderShape(self: PhysicsTestMotionResult): int64 =
  if isNil(physicsTestMotionResultGetColliderShapeMethodBind):
    physicsTestMotionResultGetColliderShapeMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"get_collider_shape")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsTestMotionResultGetColliderShapeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `colliderShape=`(self: PhysicsTestMotionResult; val: int64) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsTestMotionResultGetColliderVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc colliderVelocity(self: PhysicsTestMotionResult): Vector3 =
  if isNil(physicsTestMotionResultGetColliderVelocityMethodBind):
    physicsTestMotionResultGetColliderVelocityMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"get_collider_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsTestMotionResultGetColliderVelocityMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `colliderVelocity=`(self: PhysicsTestMotionResult; val: Vector3) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsTestMotionResultGetCollisionDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionDepth(self: PhysicsTestMotionResult): float64 =
  if isNil(physicsTestMotionResultGetCollisionDepthMethodBind):
    physicsTestMotionResultGetCollisionDepthMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"get_collision_depth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsTestMotionResultGetCollisionDepthMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `collisionDepth=`(self: PhysicsTestMotionResult; val: float64) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsTestMotionResultGetCollisionNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionNormal(self: PhysicsTestMotionResult): Vector3 =
  if isNil(physicsTestMotionResultGetCollisionNormalMethodBind):
    physicsTestMotionResultGetCollisionNormalMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"get_collision_normal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsTestMotionResultGetCollisionNormalMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `collisionNormal=`(self: PhysicsTestMotionResult; val: Vector3) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsTestMotionResultGetCollisionPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionPoint(self: PhysicsTestMotionResult): Vector3 =
  if isNil(physicsTestMotionResultGetCollisionPointMethodBind):
    physicsTestMotionResultGetCollisionPointMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"get_collision_point")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsTestMotionResultGetCollisionPointMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `collisionPoint=`(self: PhysicsTestMotionResult; val: Vector3) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsTestMotionResultGetCollisionSafeFractionMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionSafeFraction(self: PhysicsTestMotionResult): float64 =
  if isNil(physicsTestMotionResultGetCollisionSafeFractionMethodBind):
    physicsTestMotionResultGetCollisionSafeFractionMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"get_collision_safe_fraction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsTestMotionResultGetCollisionSafeFractionMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

proc `collisionSafeFraction=`(self: PhysicsTestMotionResult; val: float64) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsTestMotionResultGetCollisionUnsafeFractionMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionUnsafeFraction(self: PhysicsTestMotionResult): float64 =
  if isNil(physicsTestMotionResultGetCollisionUnsafeFractionMethodBind):
    physicsTestMotionResultGetCollisionUnsafeFractionMethodBind = getMethod(
        cstring"PhysicsTestMotionResult",
        cstring"get_collision_unsafe_fraction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsTestMotionResultGetCollisionUnsafeFractionMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

proc `collisionUnsafeFraction=`(self: PhysicsTestMotionResult; val: float64) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsTestMotionResultGetMotionMethodBind {.threadvar.}: ptr GodotMethodBind
proc motion(self: PhysicsTestMotionResult): Vector3 =
  if isNil(physicsTestMotionResultGetMotionMethodBind):
    physicsTestMotionResultGetMotionMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"get_motion")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsTestMotionResultGetMotionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

proc `motion=`(self: PhysicsTestMotionResult; val: Vector3) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var physicsTestMotionResultGetMotionRemainderMethodBind {.threadvar.}: ptr GodotMethodBind
proc motionRemainder(self: PhysicsTestMotionResult): Vector3 =
  if isNil(physicsTestMotionResultGetMotionRemainderMethodBind):
    physicsTestMotionResultGetMotionRemainderMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"get_motion_remainder")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsTestMotionResultGetMotionRemainderMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

proc `motionRemainder=`(self: PhysicsTestMotionResult; val: Vector3) =
  if isNil(physicsTestMotionResultMethodBind):
    physicsTestMotionResultMethodBind = getMethod(
        cstring"PhysicsTestMotionResult", cstring"")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsTestMotionResultMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
