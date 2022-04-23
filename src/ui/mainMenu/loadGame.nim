import nimgame2 / [
  input,
  gui / button,
  textgraphic,
  nimgame
]
import .. / .. / dataScripts / [mainMenuData, mainData]

type
  LoadGame* = ref object of GuiButton



proc init(button: LoadGame) =
  let text = newTextGraphic(loadMenuFont())
  text.setText(loadGameText)
  GuiButton(button).initGuiButton(graphic = text, image = nil)
  button.pos = (80.0, gameHeight / 2 + textDistance / 2)



proc newLoadGame*(): LoadGame =
  result = new LoadGame
  result.init()



method onClick*(button: LoadGame, mb: MouseButton) =
  if mb == MouseButton.left:
    #game.scene =
    discard
  else:
    discard



method render*(button: LoadGame) =
  button.renderGuiButton()