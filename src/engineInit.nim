import nimgame2 / [nimgame, settings]
import scenes / [titleScene]
import classes

proc initEngine*() =
  game = newGame()
  let initOkay = game.init(w = 1080, h = 768, title = "Beyond the Sphere")
  if initOkay:
    let titleScene = newTitleScene()
    game.scene = titleScene
    game.run