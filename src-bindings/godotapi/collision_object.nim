
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc collisionLayer*(self: CollisionObject): int64 {.gcsafe, locks: 0.}
proc `collisionLayer=`*(self: CollisionObject; val: int64) {.gcsafe, locks: 0.}
proc collisionMask*(self: CollisionObject): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: CollisionObject; val: int64) {.gcsafe, locks: 0.}
proc inputCaptureOnDrag*(self: CollisionObject): bool {.gcsafe, locks: 0.}
proc `inputCaptureOnDrag=`*(self: CollisionObject; val: bool) {.gcsafe, locks: 0.}
proc inputRayPickable*(self: CollisionObject): bool {.gcsafe, locks: 0.}
proc `inputRayPickable=`*(self: CollisionObject; val: bool) {.gcsafe, locks: 0.}
method inputEvent*(self: CollisionObject; camera: Object; event: InputEvent;
                   position: Vector3; normal: Vector3; shapeIdx: int64) {.
    gcsafe, locks: 0, base.}
method shapeChanged*(self: CollisionObject; shape: Shape) {.gcsafe, locks: 0,
    base.}
method updateDebugShapes*(self: CollisionObject) {.gcsafe, locks: 0, base.}
proc createShapeOwner*(self: CollisionObject; owner: Object): int64 {.gcsafe,
    locks: 0.}
proc getCollisionLayerBit*(self: CollisionObject; bit: int64): bool {.gcsafe,
    locks: 0.}
proc getCollisionMaskBit*(self: CollisionObject; bit: int64): bool {.gcsafe,
    locks: 0.}
proc getRid*(self: CollisionObject): RID {.gcsafe, locks: 0.}
proc getShapeOwners*(self: CollisionObject): Array {.gcsafe, locks: 0.}
proc isShapeOwnerDisabled*(self: CollisionObject; ownerId: int64): bool {.
    gcsafe, locks: 0.}
proc removeShapeOwner*(self: CollisionObject; ownerId: int64) {.gcsafe, locks: 0.}
proc setCollisionLayerBit*(self: CollisionObject; bit: int64; value: bool) {.
    gcsafe, locks: 0.}
proc setCollisionMaskBit*(self: CollisionObject; bit: int64; value: bool) {.
    gcsafe, locks: 0.}
proc shapeFindOwner*(self: CollisionObject; shapeIndex: int64): int64 {.gcsafe,
    locks: 0.}
proc shapeOwnerAddShape*(self: CollisionObject; ownerId: int64; shape: Shape) {.
    gcsafe, locks: 0.}
proc shapeOwnerClearShapes*(self: CollisionObject; ownerId: int64) {.gcsafe,
    locks: 0.}
proc shapeOwnerGetOwner*(self: CollisionObject; ownerId: int64): Object {.
    gcsafe, locks: 0.}
proc shapeOwnerGetShape*(self: CollisionObject; ownerId: int64; shapeId: int64): Shape {.
    gcsafe, locks: 0.}
proc shapeOwnerGetShapeCount*(self: CollisionObject; ownerId: int64): int64 {.
    gcsafe, locks: 0.}
proc shapeOwnerGetShapeIndex*(self: CollisionObject; ownerId: int64;
                              shapeId: int64): int64 {.gcsafe, locks: 0.}
proc shapeOwnerGetTransform*(self: CollisionObject; ownerId: int64): Transform {.
    gcsafe, locks: 0.}
proc shapeOwnerRemoveShape*(self: CollisionObject; ownerId: int64;
                            shapeId: int64) {.gcsafe, locks: 0.}
proc shapeOwnerSetDisabled*(self: CollisionObject; ownerId: int64;
                            disabled: bool) {.gcsafe, locks: 0.}
proc shapeOwnerSetTransform*(self: CollisionObject; ownerId: int64;
                             transform: Transform) {.gcsafe, locks: 0.}
var collisionObjectGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionLayer(self: CollisionObject): int64 =
  if isNil(collisionObjectGetCollisionLayerMethodBind):
    collisionObjectGetCollisionLayerMethodBind = getMethod(
        cstring"CollisionObject", cstring"get_collision_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectGetCollisionLayerMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var collisionObjectSetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionLayer=`(self: CollisionObject; val: int64) =
  if isNil(collisionObjectSetCollisionLayerMethodBind):
    collisionObjectSetCollisionLayerMethodBind = getMethod(
        cstring"CollisionObject", cstring"set_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionObjectSetCollisionLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: CollisionObject): int64 =
  if isNil(collisionObjectGetCollisionMaskMethodBind):
    collisionObjectGetCollisionMaskMethodBind = getMethod(
        cstring"CollisionObject", cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var collisionObjectSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: CollisionObject; val: int64) =
  if isNil(collisionObjectSetCollisionMaskMethodBind):
    collisionObjectSetCollisionMaskMethodBind = getMethod(
        cstring"CollisionObject", cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionObjectSetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectGetCaptureInputOnDragMethodBind {.threadvar.}: ptr GodotMethodBind
proc inputCaptureOnDrag(self: CollisionObject): bool =
  if isNil(collisionObjectGetCaptureInputOnDragMethodBind):
    collisionObjectGetCaptureInputOnDragMethodBind = getMethod(
        cstring"CollisionObject", cstring"get_capture_input_on_drag")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectGetCaptureInputOnDragMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var collisionObjectSetCaptureInputOnDragMethodBind {.threadvar.}: ptr GodotMethodBind
proc `inputCaptureOnDrag=`(self: CollisionObject; val: bool) =
  if isNil(collisionObjectSetCaptureInputOnDragMethodBind):
    collisionObjectSetCaptureInputOnDragMethodBind = getMethod(
        cstring"CollisionObject", cstring"set_capture_input_on_drag")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionObjectSetCaptureInputOnDragMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectIsRayPickableMethodBind {.threadvar.}: ptr GodotMethodBind
proc inputRayPickable(self: CollisionObject): bool =
  if isNil(collisionObjectIsRayPickableMethodBind):
    collisionObjectIsRayPickableMethodBind = getMethod(
        cstring"CollisionObject", cstring"is_ray_pickable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectIsRayPickableMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var collisionObjectSetRayPickableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `inputRayPickable=`(self: CollisionObject; val: bool) =
  if isNil(collisionObjectSetRayPickableMethodBind):
    collisionObjectSetRayPickableMethodBind = getMethod(
        cstring"CollisionObject", cstring"set_ray_pickable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionObjectSetRayPickableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectUnderscoreinputEventMethodBind {.threadvar.}: ptr GodotMethodBind
method inputEvent(self: CollisionObject; camera: Object; event: InputEvent;
                  position: Vector3; normal: Vector3; shapeIdx: int64) =
  if isNil(collisionObjectUnderscoreinputEventMethodBind):
    collisionObjectUnderscoreinputEventMethodBind = getMethod(
        cstring"CollisionObject", cstring"_input_event")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not camera.isNil:
    camera.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(position)
  argsToPassToGodot[][3] = unsafeAddr(normal)
  argsToPassToGodot[][4] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  collisionObjectUnderscoreinputEventMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectUnderscoreshapeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method shapeChanged(self: CollisionObject; shape: Shape) =
  if isNil(collisionObjectUnderscoreshapeChangedMethodBind):
    collisionObjectUnderscoreshapeChangedMethodBind = getMethod(
        cstring"CollisionObject", cstring"_shape_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  collisionObjectUnderscoreshapeChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectUnderscoreupdateDebugShapesMethodBind {.threadvar.}: ptr GodotMethodBind
method updateDebugShapes(self: CollisionObject) =
  if isNil(collisionObjectUnderscoreupdateDebugShapesMethodBind):
    collisionObjectUnderscoreupdateDebugShapesMethodBind = getMethod(
        cstring"CollisionObject", cstring"_update_debug_shapes")
  var ptrCallRet: pointer
  collisionObjectUnderscoreupdateDebugShapesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var collisionObjectCreateShapeOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc createShapeOwner(self: CollisionObject; owner: Object): int64 =
  if isNil(collisionObjectCreateShapeOwnerMethodBind):
    collisionObjectCreateShapeOwnerMethodBind = getMethod(
        cstring"CollisionObject", cstring"create_shape_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not owner.isNil:
    owner.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectCreateShapeOwnerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectGetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionLayerBit(self: CollisionObject; bit: int64): bool =
  if isNil(collisionObjectGetCollisionLayerBitMethodBind):
    collisionObjectGetCollisionLayerBitMethodBind = getMethod(
        cstring"CollisionObject", cstring"get_collision_layer_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectGetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: CollisionObject; bit: int64): bool =
  if isNil(collisionObjectGetCollisionMaskBitMethodBind):
    collisionObjectGetCollisionMaskBitMethodBind = getMethod(
        cstring"CollisionObject", cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectGetRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRid(self: CollisionObject): RID =
  if isNil(collisionObjectGetRidMethodBind):
    collisionObjectGetRidMethodBind = getMethod(cstring"CollisionObject",
        cstring"get_rid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectGetRidMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var collisionObjectGetShapeOwnersMethodBind {.threadvar.}: ptr GodotMethodBind
proc getShapeOwners(self: CollisionObject): Array =
  if isNil(collisionObjectGetShapeOwnersMethodBind):
    collisionObjectGetShapeOwnersMethodBind = getMethod(
        cstring"CollisionObject", cstring"get_shape_owners")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  initGodotArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  collisionObjectGetShapeOwnersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var collisionObjectIsShapeOwnerDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isShapeOwnerDisabled(self: CollisionObject; ownerId: int64): bool =
  if isNil(collisionObjectIsShapeOwnerDisabledMethodBind):
    collisionObjectIsShapeOwnerDisabledMethodBind = getMethod(
        cstring"CollisionObject", cstring"is_shape_owner_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectIsShapeOwnerDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectRemoveShapeOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeShapeOwner(self: CollisionObject; ownerId: int64) =
  if isNil(collisionObjectRemoveShapeOwnerMethodBind):
    collisionObjectRemoveShapeOwnerMethodBind = getMethod(
        cstring"CollisionObject", cstring"remove_shape_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  collisionObjectRemoveShapeOwnerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectSetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionLayerBit(self: CollisionObject; bit: int64; value: bool) =
  if isNil(collisionObjectSetCollisionLayerBitMethodBind):
    collisionObjectSetCollisionLayerBitMethodBind = getMethod(
        cstring"CollisionObject", cstring"set_collision_layer_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  collisionObjectSetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectSetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: CollisionObject; bit: int64; value: bool) =
  if isNil(collisionObjectSetCollisionMaskBitMethodBind):
    collisionObjectSetCollisionMaskBitMethodBind = getMethod(
        cstring"CollisionObject", cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  collisionObjectSetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectShapeFindOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeFindOwner(self: CollisionObject; shapeIndex: int64): int64 =
  if isNil(collisionObjectShapeFindOwnerMethodBind):
    collisionObjectShapeFindOwnerMethodBind = getMethod(
        cstring"CollisionObject", cstring"shape_find_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shapeIndex)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectShapeFindOwnerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectShapeOwnerAddShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerAddShape(self: CollisionObject; ownerId: int64; shape: Shape) =
  if isNil(collisionObjectShapeOwnerAddShapeMethodBind):
    collisionObjectShapeOwnerAddShapeMethodBind = getMethod(
        cstring"CollisionObject", cstring"shape_owner_add_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  let argToPassToGodot1 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  collisionObjectShapeOwnerAddShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectShapeOwnerClearShapesMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerClearShapes(self: CollisionObject; ownerId: int64) =
  if isNil(collisionObjectShapeOwnerClearShapesMethodBind):
    collisionObjectShapeOwnerClearShapesMethodBind = getMethod(
        cstring"CollisionObject", cstring"shape_owner_clear_shapes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  collisionObjectShapeOwnerClearShapesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectShapeOwnerGetOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerGetOwner(self: CollisionObject; ownerId: int64): Object =
  if isNil(collisionObjectShapeOwnerGetOwnerMethodBind):
    collisionObjectShapeOwnerGetOwnerMethodBind = getMethod(
        cstring"CollisionObject", cstring"shape_owner_get_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  collisionObjectShapeOwnerGetOwnerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var collisionObjectShapeOwnerGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerGetShape(self: CollisionObject; ownerId: int64; shapeId: int64): Shape =
  if isNil(collisionObjectShapeOwnerGetShapeMethodBind):
    collisionObjectShapeOwnerGetShapeMethodBind = getMethod(
        cstring"CollisionObject", cstring"shape_owner_get_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  collisionObjectShapeOwnerGetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var collisionObjectShapeOwnerGetShapeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerGetShapeCount(self: CollisionObject; ownerId: int64): int64 =
  if isNil(collisionObjectShapeOwnerGetShapeCountMethodBind):
    collisionObjectShapeOwnerGetShapeCountMethodBind = getMethod(
        cstring"CollisionObject", cstring"shape_owner_get_shape_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectShapeOwnerGetShapeCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectShapeOwnerGetShapeIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerGetShapeIndex(self: CollisionObject; ownerId: int64;
                             shapeId: int64): int64 =
  if isNil(collisionObjectShapeOwnerGetShapeIndexMethodBind):
    collisionObjectShapeOwnerGetShapeIndexMethodBind = getMethod(
        cstring"CollisionObject", cstring"shape_owner_get_shape_index")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectShapeOwnerGetShapeIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectShapeOwnerGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerGetTransform(self: CollisionObject; ownerId: int64): Transform =
  if isNil(collisionObjectShapeOwnerGetTransformMethodBind):
    collisionObjectShapeOwnerGetTransformMethodBind = getMethod(
        cstring"CollisionObject", cstring"shape_owner_get_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObjectShapeOwnerGetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectShapeOwnerRemoveShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerRemoveShape(self: CollisionObject; ownerId: int64; shapeId: int64) =
  if isNil(collisionObjectShapeOwnerRemoveShapeMethodBind):
    collisionObjectShapeOwnerRemoveShapeMethodBind = getMethod(
        cstring"CollisionObject", cstring"shape_owner_remove_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  var ptrCallRet: pointer
  collisionObjectShapeOwnerRemoveShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectShapeOwnerSetDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerSetDisabled(self: CollisionObject; ownerId: int64; disabled: bool) =
  if isNil(collisionObjectShapeOwnerSetDisabledMethodBind):
    collisionObjectShapeOwnerSetDisabledMethodBind = getMethod(
        cstring"CollisionObject", cstring"shape_owner_set_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  collisionObjectShapeOwnerSetDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObjectShapeOwnerSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerSetTransform(self: CollisionObject; ownerId: int64;
                            transform: Transform) =
  if isNil(collisionObjectShapeOwnerSetTransformMethodBind):
    collisionObjectShapeOwnerSetTransformMethodBind = getMethod(
        cstring"CollisionObject", cstring"shape_owner_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  collisionObjectShapeOwnerSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
