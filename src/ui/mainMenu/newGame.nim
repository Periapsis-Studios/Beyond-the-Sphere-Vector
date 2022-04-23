import nimgame2 / [
  input,
  gui / button,
  textgraphic,
  nimgame
]
import .. / .. / dataScripts / [mainMenuData, mainData]

type
  NewGame* = ref object of GuiButton



proc init(button: NewGame) =
  let text = newTextGraphic(loadMenuFont())
  text.setText(newGameText)
  GuiButton(button).initGuiButton(graphic = text, image = nil)
  button.pos = (80.0, gameHeight / 2 + textDistance / 2 + fontSize + textDistance)



proc newNewGame*(): NewGame =
  result = new NewGame
  result.init()



method onClick*(button: NewGame, mb: MouseButton) =
  if mb == MouseButton.left:
    #game.scene =
    discard
  else:
    discard



method render*(button: NewGame) =
  button.renderGuiButton()