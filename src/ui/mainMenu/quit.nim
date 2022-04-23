import nimgame2 / [
  input,
  gui / button,
  textgraphic,
  nimgame
]
import .. / .. / dataScripts / [mainMenuData, mainData]

type
  Quit* = ref object of GuiButton



proc init(button: Quit) =
  let text = newTextGraphic(loadMenuFont())
  text.setText(quitText)
  GuiButton(button).initGuiButton(graphic = text, image = nil)
  button.pos = (80.0, gameHeight / 2 - textDistance / 2 - fontSize - textDistance)



proc newQuit*(): Quit =
  result = new Quit
  result.init()



method onClick*(button: Quit, mb: MouseButton) =
  if mb == MouseButton.left:
    #game.scene =
    discard
  else:
    discard



method render*(button: Quit) =
  button.renderGuiButton()