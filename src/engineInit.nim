import nimgame2 / [nimgame]
import scenes / [splashScene]
import dataScripts / mainData

proc initEngine*(game: var Game) =
  let splashScene = newSplashScene()
  game.setResizable(true)
  game.scene = splashScene
  game.run