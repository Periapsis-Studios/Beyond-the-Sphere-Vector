import
  boilerplate / [
    app
  ],
  sdl2_nim / sdl,
  strformat,
  logHandler


logSetOutputFunction(handleLog, nil)
var appVar = app.init()
appVar.exit()