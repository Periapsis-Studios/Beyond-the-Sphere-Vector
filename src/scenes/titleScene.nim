import nimgame2 / [
  nimgame,
  scene,
  texturegraphic,
  types
]



type
  TitleScene = ref object of Scene
    backgroundTexture: TextureGraphic

proc init(scene: TitleScene) =
  Scene(scene).initScene()
  scene.backgroundTexture = newTextureGraphic()
  discard scene.backgroundTexture.load("data/gfx/BtS-Background.png")

proc newTitleScene*(): TitleScene =
    result = TitleScene()
    init(result)

proc free*(scene: TitleScene) =
  scene.backgroundTexture.free()

method event*(scene: TitleScene, event: Event) =
  discard

method render*(scene: TitleScene) =
  scene.renderScene()

method update*(scene: TitleScene, elapsed: float) =
  scene.updateScene(elapsed)

method show*(scene: TitleScene) =
  echo "Switched to title scene"