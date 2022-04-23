# ----------------------------------------------------------------
# Data for main application things and non-scene/entity-specific things
# ----------------------------------------------------------------
import nimgame2 / [
  truetypefont,
  texturegraphic,
]
import .. / logger
import os
import std / strformat

var
  gameWidth*: int = 1024
  gameHeight*: int = 586
  gameTitle*: string = "Beyond the Sphere"
  splashPadding*: float = gameWidth / 4
  progLocation*: string = getAppDir()
let
  fontFile*: string = fmt"{progLocation}\data\ttf\Nasa21.ttf"
  backgroundFile*: string = fmt"{progLocation}\data\gfx\BtS-Background.png"



proc loadMenuFont*(): TrueTypeFont =
  var menuFont = newTrueTypeFont()
  discard menuFont.load(file = fontFile, size = 64)
  if isNil(menuFont):
    log "Error loading Nasa21.ttf of size 64"
  return menuFont



proc loadUIFont*(): TrueTypeFont =
  var uiFont = newTrueTypeFont()
  discard uiFont.load(file = fontFile, size = 380)
  if isNil(uiFont):
    log "Error loading Nasa21.ttf of size 380"
  return uiFont



proc loadEarthBackground*(): TextureGraphic =
  var earthBackground = newTextureGraphic()
  var loadSuccess = earthBackground.load(file = backgroundFile)
  if not loadSuccess:
    log "Error loading BtS-Background.png"
  return earthBackground