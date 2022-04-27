import
  imageGraphic,
  vector,
  textgraphic

type
  Entity* = ref object of RootObj
    pos*: Vector2
    graphic*: Graphic
    text*: TextGraphic



method update*(entity: Entity) {.base.} =
  discard



method remove*(entity: Entity) {.base.} =
  entity.graphic.remove()