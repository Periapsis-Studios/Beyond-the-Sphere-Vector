import
  vector,
  imageGraphic,
  textGraphic

type
  UiButton* = ref object of RootObj
    graphic*: Graphic
    text*: TextGraphic
    pos*: Vector2



method onLmbPress*(uiButton: UiButton) {.base.} =
  discard



method onMmbPress*(uiButton: UiButton) {.base.} =
  discard



method onRmbPress*(uiButton: UiButton) {.base.} =
  discard



method onHoverStart*(uiButton: UiButton) {.base.} =
  discard



method onHoverEnd*(uiButton: UiButton) {.base.} =
  discard



method update*(uiButton: UiButton) {.base.} =
  discard



method remove*(uiButton: UiButton) {.base.} =
  uiButton.graphic.remove()