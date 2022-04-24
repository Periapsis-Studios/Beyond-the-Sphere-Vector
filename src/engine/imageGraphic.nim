import
  sdl2_nim / [sdl, sdl_image],
  strformat

type
  Graphic* = ref object
    surface*: Surface



method loadPNG*(graphic: Graphic, path: cstring) {.base.} =
  var rw = rwFromFile(path, "r")
  graphic.surface = loadPNG_RW(rw)

method loadSVG*(graphic: Graphic, path: cstring) {.base.} =
  var rw = rwFromFile(path, "r")
  graphic.surface = loadSVG_RW(rw)

method loadJPG*(graphic: Graphic, path: cstring) {.base.} =
  var rw = rwFromFile(path, "r")
  graphic.surface = loadJPG_RW(rw)

proc newGraphic*(): Graphic =
  result = new Graphic

proc newGraphic*(path: cstring, fileType: string): Graphic =
  result = new Graphic
  case fileType
  of "png":
    result.loadPNG(path)
  of "jpg":
    result.loadJPG(path)
  of "SVG":
    result.loadSVG(path)
  else:
    logCritical(Log_Category_Error, fmt"Failed to load graphics file of type {fileType}")

