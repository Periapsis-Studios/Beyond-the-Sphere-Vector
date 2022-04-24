import
  sdl2_nim / [sdl, sdl_image],
  strformat,
  sdlBackend

const
  title*: cstring = "Beyond the Sphere"
  width*: cint = 1024
  height*: cint = 586
  flags*: uint32 = Window_Resizable + Window_OpenGL

type
  App* = ref object
    window: Window
    renderer: Renderer



proc init*(): App =
  initSDL()

  var app = new App
  let centered: cint = Windowpos_Centered
  app.window = createWindow(title, centered, centered, width, height, flags)
  if app.window == nil:
    logCritical(Log_Category_Error, fmt"Failed to create window: {sdl.getError()}")

  app.renderer = createRenderer(app.window, cint(-1), Renderer_Software)
  if app.renderer == nil:
    logCritical(Log_Category_Error, fmt"Failed to create renderer: {sdl.getError()}")

  if app.renderer.setRenderDrawColor(0, 0, 0, 255) != 0:
    logCritical(Log_Category_Error, fmt"Failed to set render draw color: {sdl.getError()}")

  if sdl_image.init(Init_JPG + Init_PNG + Init_TIF + Init_WEBP) != 0:
    logCritical(Log_Category_Error, fmt"Failed to initialize SDL image: {sdl.getError()}")

  logMessage(Log_Category_Application, Log_Priority_Info, "Successfully intitialized the application")

  return app



proc exit*(app: App) =
  sdl_image.quit()
  app.renderer.destroyRenderer()
  app.window.destroyWindow()
  destroySDL()
  logMessage(Log_Category_Application, Log_Priority_Info, "Successfully shut down the application")
  