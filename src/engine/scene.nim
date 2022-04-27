import
  entity,
  sdl2_nim / sdl,
  ui

type
  Scene* = ref object of RootObj
    entities*: seq[Entity]
    ui*: seq[UI]



method add*(scene: Scene, entity: Entity) {.base.} =
  scene.entities.add(entity)



method remove*(scene: Scene, entity: Entity) {.base.} =
  for i in 0 ..< scene.entities.len:
    if scene.entities[i] == entity:
      scene.entities.del(i)
      entity.remove()



method remove*(scene: Scene) {.base.} =
  for entity in scene.entities:
    entity.remove()



method show*(scene: Scene) {.base.} =
  discard



method hide*(scene: Scene) {.base.} =
  discard