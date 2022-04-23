import nimgame2 / [
  input,
  gui / button,
  textgraphic,
  nimgame,
]
import .. / .. / dataScripts / [mainMenuData, mainData]

type
  Settings* = ref object of GuiButton



proc init(button: Settings) =
  let text = newTextGraphic(loadMenuFont())
  text.setText(settingsText)
  GuiButton(button).initGuiButton(graphic = text, image = nil)
  button.pos = (80.0, gameHeight / 2 - textDistance / 2)



proc newSettings*(): Settings =
  result = new Settings
  result.init()



method onClick*(button: Settings, mb: MouseButton) =
  if mb == MouseButton.left:
    #game.scene =
    discard
  else:
    discard



method render*(button: Settings) =
  button.renderGuiButton()