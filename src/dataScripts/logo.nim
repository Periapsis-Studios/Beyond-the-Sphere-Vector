import nimgame2 / [
    texturegraphic,
    entity,
  ]
import mainData
import std / strformat

type
  Logo* = ref object of Entity

let logoFile = fmt"{progLocation}/data/gfx/logo.png"



proc init(logo: Logo) =
  logo.initEntity()
  logo.graphic = newTextureGraphic(logoFile)
  logo.centrify()

  logo.pos = (float(gameWidth) - splashPadding, gameHeight / 2)



proc newLogo*(): Logo =
  result = new Logo
  result.init()