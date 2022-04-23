import nimgame2 / [
  nimgame,
]
import scenes / [titleScene]
import dataScripts / mainData

var game* = newGame()
discard game.init(gameWidth, gameHeight, gameTitle)
let title* = newTitleScene()