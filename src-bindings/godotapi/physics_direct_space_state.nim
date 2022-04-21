
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

proc castMotion*(self: PhysicsDirectSpaceState;
                 shape: PhysicsShapeQueryParameters; motion: Vector3): Array {.
    gcsafe, locks: 0.}
proc collideShape*(self: PhysicsDirectSpaceState;
                   shape: PhysicsShapeQueryParameters;
                   maxResults: int64 = 32'i64): Array {.gcsafe, locks: 0.}
proc getRestInfo*(self: PhysicsDirectSpaceState;
                  shape: PhysicsShapeQueryParameters): Dictionary {.gcsafe,
    locks: 0.}
proc intersectPoint*(self: PhysicsDirectSpaceState; point: Vector3;
                     maxResults: int64 = 32'i64; exclude: Array = newArray();
                     collisionLayer: int64 = 2147483647'i64;
                     collideWithBodies: bool = true;
                     collideWithAreas: bool = false): Array {.gcsafe, locks: 0.}
proc intersectRay*(self: PhysicsDirectSpaceState; fromm: Vector3; to: Vector3;
                   exclude: Array = newArray();
                   collisionMask: int64 = 2147483647'i64;
                   collideWithBodies: bool = true;
                   collideWithAreas: bool = false): Dictionary {.gcsafe,
    locks: 0.}
proc intersectShape*(self: PhysicsDirectSpaceState;
                     shape: PhysicsShapeQueryParameters;
                     maxResults: int64 = 32'i64): Array {.gcsafe, locks: 0.}
var physicsDirectSpaceStateCastMotionMethodBind {.threadvar.}: ptr GodotMethodBind
proc castMotion(self: PhysicsDirectSpaceState;
                shape: PhysicsShapeQueryParameters; motion: Vector3): Array =
  if isNil(physicsDirectSpaceStateCastMotionMethodBind):
    physicsDirectSpaceStateCastMotionMethodBind = getMethod(
        cstring"PhysicsDirectSpaceState", cstring"cast_motion")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(motion)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  physicsDirectSpaceStateCastMotionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var physicsDirectSpaceStateCollideShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideShape(self: PhysicsDirectSpaceState;
                  shape: PhysicsShapeQueryParameters; maxResults: int64 = 32'i64): Array =
  if isNil(physicsDirectSpaceStateCollideShapeMethodBind):
    physicsDirectSpaceStateCollideShapeMethodBind = getMethod(
        cstring"PhysicsDirectSpaceState", cstring"collide_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(maxResults)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  physicsDirectSpaceStateCollideShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var physicsDirectSpaceStateGetRestInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRestInfo(self: PhysicsDirectSpaceState;
                 shape: PhysicsShapeQueryParameters): Dictionary =
  if isNil(physicsDirectSpaceStateGetRestInfoMethodBind):
    physicsDirectSpaceStateGetRestInfoMethodBind = getMethod(
        cstring"PhysicsDirectSpaceState", cstring"get_rest_info")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  initGodotDictionary(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  physicsDirectSpaceStateGetRestInfoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newDictionary(ptrCallVal)

var physicsDirectSpaceStateIntersectPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc intersectPoint(self: PhysicsDirectSpaceState; point: Vector3;
                    maxResults: int64 = 32'i64; exclude: Array = newArray();
                    collisionLayer: int64 = 2147483647'i64;
                    collideWithBodies: bool = true;
                    collideWithAreas: bool = false): Array =
  if isNil(physicsDirectSpaceStateIntersectPointMethodBind):
    physicsDirectSpaceStateIntersectPointMethodBind = getMethod(
        cstring"PhysicsDirectSpaceState", cstring"intersect_point")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(point)
  argsToPassToGodot[][1] = unsafeAddr(maxResults)
  argsToPassToGodot[][2] = exclude.godotArray
  argsToPassToGodot[][3] = unsafeAddr(collisionLayer)
  argsToPassToGodot[][4] = unsafeAddr(collideWithBodies)
  argsToPassToGodot[][5] = unsafeAddr(collideWithAreas)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  physicsDirectSpaceStateIntersectPointMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)

var physicsDirectSpaceStateIntersectRayMethodBind {.threadvar.}: ptr GodotMethodBind
proc intersectRay(self: PhysicsDirectSpaceState; fromm: Vector3; to: Vector3;
                  exclude: Array = newArray();
                  collisionMask: int64 = 2147483647'i64;
                  collideWithBodies: bool = true; collideWithAreas: bool = false): Dictionary =
  if isNil(physicsDirectSpaceStateIntersectRayMethodBind):
    physicsDirectSpaceStateIntersectRayMethodBind = getMethod(
        cstring"PhysicsDirectSpaceState", cstring"intersect_ray")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromm)
  argsToPassToGodot[][1] = unsafeAddr(to)
  argsToPassToGodot[][2] = exclude.godotArray
  argsToPassToGodot[][3] = unsafeAddr(collisionMask)
  argsToPassToGodot[][4] = unsafeAddr(collideWithBodies)
  argsToPassToGodot[][5] = unsafeAddr(collideWithAreas)
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  initGodotDictionary(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  physicsDirectSpaceStateIntersectRayMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newDictionary(ptrCallVal)

var physicsDirectSpaceStateIntersectShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc intersectShape(self: PhysicsDirectSpaceState;
                    shape: PhysicsShapeQueryParameters;
                    maxResults: int64 = 32'i64): Array =
  if isNil(physicsDirectSpaceStateIntersectShapeMethodBind):
    physicsDirectSpaceStateIntersectShapeMethodBind = getMethod(
        cstring"PhysicsDirectSpaceState", cstring"intersect_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(maxResults)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  physicsDirectSpaceStateIntersectShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newArray(ptrCallVal)
