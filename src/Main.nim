import
  boilerplate / [
    app
  ],
  sdl2_nim / sdl,
  logHandler


logSetOutputFunction(handleLog, nil)
var appVar = app.init()
appVar.exit()