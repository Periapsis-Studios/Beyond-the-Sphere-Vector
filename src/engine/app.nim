import
  sdl2_nim / [sdl, sdl_image, sdl_ttf],
  strformat,
  sdlBackend,
  .. / engine / [vector, 
  button, 
  registry, 
  entity, 
  scene,
  textGraphic,
  dropdown,
  textField,
  imageGraphic]

const
  title*: cstring = "Beyond the Sphere"
  width*: cint = 1024
  height*: cint = 586
  flags*: uint32 = Window_Resizable + Window_OpenGL
var
  renderer*: Renderer

type
  App* = ref object
    window*: Window
    renderer*: Renderer
    mousePos*: Vector2
    isKeyboardFocused*: bool
    currentTextField*: UiTextField
    currentFieldText*: string
    isKeyInputComplete*: bool
    keyInput*: string



proc init*(): App =
  initSDL()

  var app = App()
  let centered: cint = Windowpos_Centered
  app.window = createWindow(title, centered, centered, width, height, flags)
  if app.window == nil:
    logCritical(Log_Category_Error, fmt"Failed to create window: {sdl.getError()}")

  app.renderer = createRenderer(app.window, cint(-1), Renderer_Software)
  if app.renderer == nil:
    logCritical(Log_Category_Error, fmt"Failed to create renderer: {sdl.getError()}")

  if app.renderer.setRenderDrawColor(0, 0, 0, 255) != 0:
    logCritical(Log_Category_Error, fmt"Failed to set render draw color: {sdl.getError()}")

  if sdl_image.init(Init_JPG + Init_PNG + Init_TIF + Init_WEBP) == 0:
    logCritical(Log_Category_Error, fmt"Failed to initialize SDL image: {sdl_image.getError()}")

  app.mousePos = Vector2(x: 0, y: 0)
  discard getMouseState(addr(app.mousePos.x), addr(app.mousePos.y))

  logMessage(Log_Category_Application, Log_Priority_Info, "Successfully intitialized the application")

  renderer = app.renderer
  return app



proc exit*(app: App) =
  for button in buttons:
    button.graphic.texture.destroyTexture()
    button.text.texture.destroyTexture()
    button.remove()
    discard button.deRegister()

  for entity in entities:
    entity.graphic.texture.destroyTexture()
    entity.text.texture.destroyTexture()
    entity.remove()
    discard entity.deRegister()

  for dropdown in dropdowns:
    for button in dropdown.openButtons:
      button.graphic.texture.destroyTexture()
      button.text.texture.destroyTexture()
      button.remove()
      discard button.deRegister()
    discard dropdown.deRegister()

  for textField in textFields:
    textField.currentText.remove()
    textField.exampleText.remove()
    textField.background.remove()
    textField.buttonBackend.remove()

  scene.remove(registry.sceneVar)
  sdl_image.quit()
  app.renderer.destroyRenderer()
  app.window.destroyWindow()
  destroySDL()
  logMessage(Log_Category_Application, Log_Priority_Info, "Successfully shut down the application")



method handleInput*(app: App) {.base.} =
  for button in buttons:
    var buttonRect = Rect(x: button.pos.x, y: button.pos.y, w: button.graphic.w, h: button.graphic.h)
    var buttonTextSize = Vector2()
    discard button.text.font.sizeText(button.text.text, addr(buttonTextSize.x), addr(buttonTextSize.y))
    var buttonTextRect = Rect(x: button.pos.x, y: button.pos.y, w: buttonTextSize.x, h: buttonTextSize.y)

    var mousePoint = Point(x: app.mousePos.x, y: app.mousePos.y)

    if mousePoint.pointInRect(buttonRect) or mousePoint.pointInRect(buttonTextRect):
      button.onHoverStart()

      case getMouseState(addr(app.mousePos.x), addr(app.mousePos.y))
      of Button_Left:
        button.onLmbPress()
      of Button_Middle:
        button.onMmbPress()
      of Button_Right:
        button.onRmbPress()
      else:
        discard
    else:
      button.onHoverEnd()

  
  for dropdown in dropdowns:
    for i in 0 ..< dropdown.openButtons.len:
      var button = dropdown.openButtons[i]
      var buttonRect = Rect(x: button.pos.x, y: button.pos.y, w: button.graphic.w, h: button.graphic.h)
      var buttonTextSize = Vector2()
      discard button.text.font.sizeText(button.text.text, addr(buttonTextSize.x), addr(buttonTextSize.y))
      var buttonTextRect = Rect(x: button.pos.x, y: button.pos.y, w: buttonTextSize.x, h: buttonTextSize.y)

      var mousePoint = Point(x: app.mousePos.x, y: app.mousePos.y)

      if mousePoint.pointInRect(buttonRect) or mousePoint.pointInRect(buttonTextRect):
        button.onHoverStart()

        case getMouseState(addr(app.mousePos.x), addr(app.mousePos.y))
        of Button_Left:
          dropdown.onLmbPress(i)
        of Button_Middle:
          dropdown.onMmbPress(i)
        of Button_Right:
          dropdown.onRmbPress(i)
        else:
          discard
      else:
        button.onHoverEnd()

  for textField in textFields:
    var fieldRect = Rect(
      x: textField.pos.x,
      y: textField.pos.y,
      w: textField.background.w,
      h: textField.background.h
    )
    
    var mousePoint = Point(x: app.mousePos.x, y: app.mousePos.y)

    if app.isKeyboardFocused and textField == app.currentTextField:
      if not isTextInputActive():
        startTextInput()
      else:
        var event: Event
        discard pollEvent(addr(event))

        if not pointInRect(mousePoint, fieldRect) and 
        getMouseState(addr(app.mousePos.x), addr(app.mousePos.y)) == Button_Left:
          stopTextInput()
          app.isKeyboardFocused = false
        elif event.kind == TextEditing:
          app.currentFieldText = ""
          for character in event.edit.text:
            app.currentFieldText.add(character)

          app.currentTextField.currentText = TextGraphic(
            text: app.currentFieldText,
            color: app.currentTextField.currentText.color,
            font: app.currentTextField.currentText.font
          )
        elif event.kind == TextInput:
          app.currentFieldText = ""
          for character in event.text.text:
            app.currentFieldText.add(character)

          app.currentTextField.currentText = TextGraphic(
            text: app.currentFieldText,
            color: app.currentTextField.currentText.color,
            font: app.currentTextField.currentText.font
          )
    
    if not app.isKeyboardFocused:
      if pointInRect(mousePoint, fieldRect) and 
        getMouseState(addr(app.mousePos.x), addr(app.mousePos.y)) == Button_Left:
          startTextInput()
          app.isKeyboardFocused = true



method update*(app: App) {.base.} =

  for entity in entities:
    entity.update()

  for button in buttons:
    button.update()



method render*(app: App) {.base.} =
  if app.renderer.renderClear() != 0:
    logCritical(Log_Category_Error, fmt"Failed to clear renderer in render(): {sdl.getError()}")
  
  for entity in entities:
    
    var rect = Rect(
      x: entity.pos.x, 
      y: entity.pos.y, 
      w: entity.graphic.w,
      h: entity.graphic.h
    )

    if not entity.graphic.isNil():
      if app.renderer.renderCopy(entity.graphic.texture, nil, addr(rect)) != 0:
        logCritical(Log_Category_Error, fmt"Failed to copy object texture to renderer: {getError()}")

    if not entity.text.isNil():
      if app.renderer.renderCopy(entity.text.texture, nil, addr(rect)) != 0:
        logCritical(Log_Category_Error, fmt"Failed to copy object text's texture to renderer: {getError()}")

      
  
  for button in buttons:
    
    var rect = Rect(
      x: button.pos.x,
      y: button.pos.y,
      w: button.graphic.w,
      h: button.graphic.h
    )

    if not button.graphic.isNil():
      if app.renderer.renderCopy(button.graphic.texture, nil, addr(rect)) != 0:
        logCritical(Log_Category_Error, fmt"Failed to copy object texture to renderer: {getError()}")

    if not button.text.isNil():
      if app.renderer.renderCopy(button.text.texture, nil, addr(rect)) != 0:
        logCritical(Log_Category_Error, fmt"Failed to copy object text's texture to renderer: {getError()}")

  for dropdown in dropdowns:
    for button in dropdown.openButtons:
      var rect = Rect(
      x: button.pos.x,
      y: button.pos.y,
      w: button.graphic.w,
      h: button.graphic.h
      )

      if not button.graphic.isNil():
        if app.renderer.renderCopy(button.graphic.texture, nil, addr(rect)) != 0:
          logCritical(Log_Category_Error, fmt"Failed to copy object texture to renderer: {getError()}")

      if not button.text.isNil():
        if app.renderer.renderCopy(button.text.texture, nil, addr(rect)) != 0:
          logCritical(Log_Category_Error, fmt"Failed to copy object text's texture to renderer: {getError()}")

  for textField in textFields:
    var rect = Rect(
      x: textField.pos.x, 
      y: textField.pos.y, 
      w: textField.background.w,
      h: textField.background.h
    )

    if not textField.graphic.isNil():
      if app.renderer.renderCopy(textField.background.texture, nil, addr(rect)) != 0:
        logCritical(Log_Category_Error, fmt"Failed to copy object texture to renderer: {getError()}")

    if not textField.text.isNil():
      if app.renderer.renderCopy(textField.currentText.texture, nil, addr(rect)) != 0:
        logCritical(Log_Category_Error, fmt"Failed to copy object text's texture to renderer: {getError()}")

  app.renderer.renderPresent()



method quit*(app: App) =
  registerEvents(Quit)



method run*(app: App, msPerUpdate: uint16) =
  var previousTime = getTicks()
  var lag = 0
  var running = true

  while running:
    var event: Event
    discard pollEvent(addr(event))
    var currentTime = getTicks()
    var elapsedTime = currentTime - previousTime
    previousTime = currentTime
    lag += elapsedTime

    app.handleInput()

    while lag >= msPerUpdate:
      app.update()
      lag -= msPerUpdate

    app.render()

    if event == Quit:
      running = false
      app.remove()