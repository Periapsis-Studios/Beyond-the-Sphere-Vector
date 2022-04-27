import
  sdl2_nim / [sdl, sdl_image]



type
  Graphic* = ref object of RootObj
    texture*: Texture
    w*: cint
    h*: cint



method load*(graphic: Graphic, path: cstring, renderer: Renderer) {.base.} =
  var rw = rwFromFile(path, "r")
  var surface = loadJPG_RW(rw)
  graphic.texture = renderer.createTextureFromSurface(surface)
  graphic.w = surface[].w
  graphic.h = surface[].h
  surface.freeSurface()



method remove*(graphic: Graphic) {.base.} =
  graphic.texture.destroyTexture()



proc newGraphic*(path: cstring, renderer: Renderer): Graphic =
  result = new Graphic
  result.load(path, renderer)