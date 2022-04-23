import nimgame2 / [
  scene,
  nimgame,
]
import times
import .. / dataScripts / [icon, logo]
import .. / logger
import .. / gameManager
import std / strutils

type
  SplashScene = ref object of Scene
    icon: Icon
    logo: Logo
    time: string



proc init(scene: SplashScene) =
  Scene(scene).initScene()

  scene.icon = newIcon()
  scene.add(scene.icon)

  scene.logo = newLogo()
  scene.add(scene.logo)

  var unFormattedTime = getTime()
  scene.time = unFormattedTime.format("HHmmss")



proc newSplashScene*(): SplashScene =
  result = new SplashScene
  result.init()



proc free*(scene: SplashScene) =
  discard



method render*(scene: SplashScene) =
  scene.renderScene()



method show*(scene: SplashScene) =
  log "Switched to splash scene"



method hide*(scene: SplashScene) =
  log "SplashScene hidden"



method update*(scene: SplashScene, elapsed: float) =
  scene.updateScene(elapsed)
  var timeNow = getTime().format("HHmmss")
  if parseInt(timeNow) - parseInt(scene.time) >= 3:
    gameManager.game.scene = gameManager.title