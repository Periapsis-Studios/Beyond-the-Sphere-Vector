import nimgame2 / [
    texturegraphic,
    entity,
  ]
import mainData
import std / strformat

type
  Icon* = ref object of Entity

let iconFile = fmt"{progLocation}/data/gfx/icon.png"



proc init(icon: Icon) =
  icon.initEntity()
  icon.graphic = newTextureGraphic(iconFile)
  icon.centrify()

  icon.pos = (splashPadding, gameHeight / 2)



proc newIcon*(): Icon =
  result = new Icon
  result.init()