import nimgame2 / [
  entity,
  scene,
  types,
  textgraphic
]
import .. / dataScripts / mainData
import .. / logger
import .. / ui / mainMenu / [newGame, loadGame, settings, quit]

const
  titlePadding = 52.0



type
  TitleScene = ref object of Scene



proc init(scene: TitleScene) =
  Scene(scene).initScene()

  let menuFont = loadMenuFont()
  let titleText = newTextGraphic(menuFont)
  titleText.setText("Beyond the Sphere")

  let title = newEntity()
  title.graphic = titleText
  title.centrify()
  title.pos = (gameWidth / 2, titlePadding)
  scene.add(title)


  let newGame = newNewGame()
  let loadGame = newLoadGame()
  let settings = newSettings()
  let quit = newQuit()
  scene.add(newGame)
  scene.add(loadGame)
  scene.add(settings)
  scene.add(quit)



proc newTitleScene*(): TitleScene =
    result = TitleScene()
    init(result)



proc free*(scene: TitleScene) =
  discard



method event*(scene: TitleScene, event: Event) =
  discard



method render*(scene: TitleScene) =
  scene.renderScene()



method update*(scene: TitleScene, elapsed: float) =
  scene.updateScene(elapsed)



method show*(scene: TitleScene) =
  log "Switched to title scene"