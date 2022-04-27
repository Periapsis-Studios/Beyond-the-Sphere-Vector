import
  sdl2_nim / [sdl],
  textGraphic,
  imageGraphic,
  button,
  vector

type
  UiTextField* = ref object of RootObj
    currentText*: TextGraphic
    exampleText*: TextGraphic
    background*: Graphic
    buttonBackend*: UiButton
    pos*: Vector2



proc newUiTextField*(exampleText: TextGraphic = TextGraphic(),
                     background: Graphic = Graphic(),
                     buttonBackend: UiButton = UiButton(),
                     pos: Vector2 = Vector2()): UiTextField =
  result = UiTextField(
    exampleText: exampleText,
    background: background,
    buttonBackend: buttonBackend,
    pos: pos
  )



method setCurrentText*(uiTextField: UiTextField, currentText: string, renderer: Renderer) {.base.} =
  var font = uiTextField.exampleText.font
  var color = uiTextField.exampleText.color

  uiTextField.currentText = TextGraphic(
    text: currentText,
    font: font,
    color: color
  )
  renderer.fillTextureWithText(uiTextField.currentText)