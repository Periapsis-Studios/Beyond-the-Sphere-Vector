import localesHandler
import json

const
  textDistance*: float = 40.0
  fontSize*: float = 64.0
let
  newGameText*: string = parsedLocale["newGame"].getStr()
  loadGameText*: string = parsedLocale["loadGame"].getStr()
  settingsText*: string = parsedLocale["settings"].getStr()
  quitText*: string = parsedLocale["quit"].getStr()