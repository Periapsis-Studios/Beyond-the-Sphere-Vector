
import
  godot, godottypes, godotinternal, collision_object_2d

export
  godottypes, collision_object_2d

proc layers*(self: PhysicsBody2D): int64 {.gcsafe, locks: 0.}
proc `layers=`*(self: PhysicsBody2D; val: int64) {.gcsafe, locks: 0.}
proc addCollisionExceptionWith*(self: PhysicsBody2D; body: Node) {.gcsafe,
    locks: 0.}
proc getCollisionExceptions*(self: PhysicsBody2D): Array {.gcsafe, locks: 0.}
proc removeCollisionExceptionWith*(self: PhysicsBody2D; body: Node) {.gcsafe,
    locks: 0.}
var physicsBody2DUnderscoregetLayersMethodBind {.threadvar.}: ptr GodotMethodBind
proc layers(self: PhysicsBody2D): int64 =
  if isNil(physicsBody2DUnderscoregetLayersMethodBind):
    physicsBody2DUnderscoregetLayersMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"_get_layers")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBody2DUnderscoregetLayersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsBody2DUnderscoresetLayersMethodBind {.threadvar.}: ptr GodotMethodBind
proc `layers=`(self: PhysicsBody2D; val: int64) =
  if isNil(physicsBody2DUnderscoresetLayersMethodBind):
    physicsBody2DUnderscoresetLayersMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"_set_layers")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsBody2DUnderscoresetLayersMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBody2DAddCollisionExceptionWithMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCollisionExceptionWith(self: PhysicsBody2D; body: Node) =
  if isNil(physicsBody2DAddCollisionExceptionWithMethodBind):
    physicsBody2DAddCollisionExceptionWithMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"add_collision_exception_with")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not body.isNil:
    body.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physicsBody2DAddCollisionExceptionWithMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBody2DGetCollisionExceptionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionExceptions(self: PhysicsBody2D): Array =
  if isNil(physicsBody2DGetCollisionExceptionsMethodBind):
    physicsBody2DGetCollisionExceptionsMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"get_collision_exceptions")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  physicsBody2DGetCollisionExceptionsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var physicsBody2DRemoveCollisionExceptionWithMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeCollisionExceptionWith(self: PhysicsBody2D; body: Node) =
  if isNil(physicsBody2DRemoveCollisionExceptionWithMethodBind):
    physicsBody2DRemoveCollisionExceptionWithMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"remove_collision_exception_with")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not body.isNil:
    body.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physicsBody2DRemoveCollisionExceptionWithMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
