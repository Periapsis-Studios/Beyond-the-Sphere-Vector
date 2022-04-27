import
  sdl2_nim / [sdl, sdl_ttf]

type
  TextGraphic* = ref object of RootObj
    text*: string
    color*: Color
    font*: Font
    texture*: Texture
    w*: cint
    h*: cint



method remove*(textGraphic: TextGraphic) {.base.} =
  textGraphic.font.closeFont()



method loadFont*(textGraphic: TextGraphic, path: string, size: cint) {.base.} =
  textGraphic.font = openFont(path, size)



method fillTextureWithText*(renderer: Renderer, textGraphic: TextGraphic) {.base.} =
  var textSurface = renderUTF8_Solid(
    textGraphic.font,
    textGraphic.text,
    textGraphic.color
  )
  textGraphic.w = textSurface[].w
  textGraphic.h = textSurface[].h

  textGraphic.texture = createTextureFromSurface(renderer, textSurface)

  textSurface.freeSurface()