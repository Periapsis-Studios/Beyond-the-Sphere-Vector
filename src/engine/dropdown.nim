import
  imageGraphic,
  textGraphic,
  button,
  vector

type
  UiDropdown* = ref object of RootObj
    optionGraphic*: Graphic
    options*: seq[TextGraphic]
    currentOptionIndex*: int
    isOpen*: bool
    openButtons*: seq[UiButton]
    pos*: Vector2



proc newUiDropdown*(options: seq[TextGraphic] = newSeq[TextGraphic](),
                    pos: Vector2 = Vector2(),
                    defaultOptionIndex: int = 0,
                    optionGraphic: Graphic = Graphic()): UiDropdown =
  var button = UiButton(
    graphic: optionGraphic,
    pos: pos,
    text: options[defaultOptionIndex]
  )
  var buttons: seq[UiButton]
  buttons.add(button)

  result = UiDropdown(
    optionGraphic: optionGraphic,
    options: options,
    currentOptionIndex: defaultOptionIndex,
    pos: pos,
    openButtons: buttons
  )



method open*(uiDropdown: UiDropdown) {.base.} =
  for i in 0 ..< uiDropdown.options.len:
    if uiDropdown.options[i] != uiDropdown.options[uiDropdown.currentOptionIndex]:
      var button = UiButton(
        graphic: uiDropdown.optionGraphic,
        text: uiDropdown.options[i],
        pos: uiDropdown.pos
      )
      uiDropdown.openButtons.add(button)
  uiDropdown.isOpen = true



method close*(uiDropdown: UiDropdown) {.base.} =
  for i in 0 ..< uiDropdown.options.len:
    if uiDropdown.options[i] != uiDropdown.options[uiDropdown.currentOptionIndex]:
      uiDropdown.openButtons[i].remove()
      uiDropdown.openButtons.delete(i)
  uiDropdown.isOpen = false



method onLmbPress*(uiDropdown: UiDropdown, index: int) {.base.} =
  if uiDropdown.isOpen:
    uiDropdown.currentOptionIndex = index
    uiDropdown.close()
  else:
    uiDropdown.open()

method onRmbPress*(uiDropdown: UiDropdown, index: int) {.base.} =
  discard

method onMmbPress*(uiDropdown: UiDropdown, index: int) {.base.} =
  discard



method onHoverStart*(uiDropdown: UiDropdown, index: int) {.base.} =
  discard

method onHoverEnd*(uiDropdown: UiDropdown, index: int) {.base.} =
  discard