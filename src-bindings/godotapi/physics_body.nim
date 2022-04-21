
import
  godot, godottypes, godotinternal, collision_object

export
  godottypes, collision_object

method getLayers*(self: PhysicsBody): int64 {.gcsafe, locks: 0.}
method setLayers*(self: PhysicsBody; mask: int64) {.gcsafe, locks: 0.}
proc addCollisionExceptionWith*(self: PhysicsBody; body: Node) {.gcsafe,
    locks: 0.}
proc getCollisionExceptions*(self: PhysicsBody): Array {.gcsafe, locks: 0.}
proc removeCollisionExceptionWith*(self: PhysicsBody; body: Node) {.gcsafe,
    locks: 0.}
var physicsBodyUnderscoregetLayersMethodBind {.threadvar.}: ptr GodotMethodBind
method getLayers(self: PhysicsBody): int64 =
  if isNil(physicsBodyUnderscoregetLayersMethodBind):
    physicsBodyUnderscoregetLayersMethodBind = getMethod(cstring"PhysicsBody",
        cstring"_get_layers")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBodyUnderscoregetLayersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsBodyUnderscoresetLayersMethodBind {.threadvar.}: ptr GodotMethodBind
method setLayers(self: PhysicsBody; mask: int64) =
  if isNil(physicsBodyUnderscoresetLayersMethodBind):
    physicsBodyUnderscoresetLayersMethodBind = getMethod(cstring"PhysicsBody",
        cstring"_set_layers")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mask)
  var ptrCallRet: pointer
  physicsBodyUnderscoresetLayersMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBodyAddCollisionExceptionWithMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCollisionExceptionWith(self: PhysicsBody; body: Node) =
  if isNil(physicsBodyAddCollisionExceptionWithMethodBind):
    physicsBodyAddCollisionExceptionWithMethodBind = getMethod(
        cstring"PhysicsBody", cstring"add_collision_exception_with")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not body.isNil:
    body.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physicsBodyAddCollisionExceptionWithMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBodyGetCollisionExceptionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionExceptions(self: PhysicsBody): Array =
  if isNil(physicsBodyGetCollisionExceptionsMethodBind):
    physicsBodyGetCollisionExceptionsMethodBind = getMethod(
        cstring"PhysicsBody", cstring"get_collision_exceptions")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  physicsBodyGetCollisionExceptionsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var physicsBodyRemoveCollisionExceptionWithMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeCollisionExceptionWith(self: PhysicsBody; body: Node) =
  if isNil(physicsBodyRemoveCollisionExceptionWithMethodBind):
    physicsBodyRemoveCollisionExceptionWithMethodBind = getMethod(
        cstring"PhysicsBody", cstring"remove_collision_exception_with")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not body.isNil:
    body.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physicsBodyRemoveCollisionExceptionWithMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
