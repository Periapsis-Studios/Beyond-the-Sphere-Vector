import
  button,
  ui,
  scene,
  entity,
  dropdown,
  textField

var
  entities*: seq[Entity]
  sceneVar*: Scene
  buttons*: seq[UiButton]
  dropdowns*: seq[UiDropdown]
  textFields*: seq[UiTextField]
  scenes: seq[Scene]



proc register*(entity: Entity) =
  entities.add(entity)

proc register*(button: UiButton) =
  buttons.add(button)

proc register*(dropdown: UiDropdown) =
  dropdowns.add(dropdown)

proc register*(textField: UiTextField) =
  textFields.add(textField)

proc setActive*(sceneIn: Scene) =
  var sceneRegistered: bool = false
  for scene in scenes:
    if scene == sceneIn:
      sceneRegistered = true

  if not sceneVar.isNil():
    entities = newSeq[Entity]()
    buttons = newSeq[UiButton]()
    sceneVar.hide()

  for entity in sceneIn.entities:
    entity.register()

  for ui in sceneIn.ui:
    for button in ui.buttons:
      button.register()

    for dropdown in ui.dropdowns:
      dropdown.register()

    for textField in ui.textFields:
      textField.register()

  sceneVar = sceneIn
  sceneVar.show()




proc isRegistered*(entityIn: Entity): bool =
  for entity in entities:
    if entity == entityIn:
      return true
  return false

proc isCurrent*(sceneIn: Scene): bool =
  if sceneIn == sceneVar:
    return true
  return false

proc isRegistered*(buttonIn: UiButton): bool =
  for button in buttons:
    if button == buttonIn:
      return true
  return false

proc isRegistered*(dropdownIn: UiDropdown): bool =
  for dropdown in dropdowns:
    if dropdown == dropdownIn:
      return true
  return false

proc isRegistered*(textFieldIn: UiTextField): bool =
  for textField in textFields:
    if textField == textFieldIn:
      return true
  return false



proc deRegister*(entityIn: Entity): bool =
  for i in 0 ..< entities.len:
    if entities[i] == entityIn:
      entities.del(i)
      return true
  return false

proc deRegister*(buttonIn: UiButton): bool =
  for i in 0 ..< buttons.len:
    if buttons[i] == buttonIn:
      buttons.del(i)
      return true
  return false

proc deRegister*(dropdownIn: UiDropdown): bool =
  for i in 0 ..< dropdowns.len:
    if dropdowns[i] == dropdownIn:
      dropdowns.del(i)
      return true
  return false

proc deRegister*(textFieldIn: UiTextField): bool =
  for i in 0 ..< textFields.len:
    if textFields[i] == textFieldIn:
      textFields.del(i)
      return true
  return false

proc deRegister*(sceneIn: Scene): bool =
  for i in 0 ..< scenes.len:
    if scenes[i] == sceneIn:
      scenes.del(i)
      return true
  return false