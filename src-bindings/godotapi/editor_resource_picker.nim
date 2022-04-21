
import
  godot, godottypes, godotinternal, h_box_container

export
  godottypes, h_box_container

proc baseType*(self: EditorResourcePicker): string {.gcsafe, locks: 0.}
proc `baseType=`*(self: EditorResourcePicker; val: string) {.gcsafe, locks: 0.}
proc editable*(self: EditorResourcePicker): bool {.gcsafe, locks: 0.}
proc `editable=`*(self: EditorResourcePicker; val: bool) {.gcsafe, locks: 0.}
proc editedResource*(self: EditorResourcePicker): Resource {.gcsafe, locks: 0.}
proc `editedResource=`*(self: EditorResourcePicker; val: Resource) {.gcsafe,
    locks: 0.}
proc toggleMode*(self: EditorResourcePicker): bool {.gcsafe, locks: 0.}
proc `toggleMode=`*(self: EditorResourcePicker; val: bool) {.gcsafe, locks: 0.}
method buttonDraw*(self: EditorResourcePicker) {.gcsafe, locks: 0, base.}
method buttonInput*(self: EditorResourcePicker; arg0: InputEvent) {.gcsafe,
    locks: 0, base.}
method editMenuCbk*(self: EditorResourcePicker; arg0: int64) {.gcsafe, locks: 0,
    base.}
method fileQuickSelected*(self: EditorResourcePicker) {.gcsafe, locks: 0, base.}
method fileSelected*(self: EditorResourcePicker; arg0: string) {.gcsafe,
    locks: 0, base.}
method resourceSelected*(self: EditorResourcePicker) {.gcsafe, locks: 0, base.}
method updateMenu*(self: EditorResourcePicker) {.gcsafe, locks: 0, base.}
method updateResourcePreview*(self: EditorResourcePicker; arg0: string;
                              arg1: Texture; arg2: Texture; arg3: int64) {.
    gcsafe, locks: 0, base.}
proc canDropDataFw*(self: EditorResourcePicker; position: Vector2;
                    data: Variant; fromm: Control): bool {.gcsafe, locks: 0.}
proc dropDataFw*(self: EditorResourcePicker; position: Vector2; data: Variant;
                 fromm: Control) {.gcsafe, locks: 0.}
proc getAllowedTypes*(self: EditorResourcePicker): PoolStringArray {.gcsafe,
    locks: 0.}
proc getDragDataFw*(self: EditorResourcePicker; position: Vector2;
                    fromm: Control): Variant {.gcsafe, locks: 0.}
method handleMenuSelected*(self: EditorResourcePicker; id: int64) {.gcsafe,
    locks: 0, base.}
method setCreateOptions*(self: EditorResourcePicker; menuNode: Object) {.gcsafe,
    locks: 0, base.}
proc setTogglePressed*(self: EditorResourcePicker; pressed: bool) {.gcsafe,
    locks: 0.}
var editorResourcePickerGetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseType(self: EditorResourcePicker): string =
  if isNil(editorResourcePickerGetBaseTypeMethodBind):
    editorResourcePickerGetBaseTypeMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"get_base_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorResourcePickerGetBaseTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorResourcePickerSetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseType=`(self: EditorResourcePicker; val: string) =
  if isNil(editorResourcePickerSetBaseTypeMethodBind):
    editorResourcePickerSetBaseTypeMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"set_base_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorResourcePickerSetBaseTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorResourcePickerIsEditableMethodBind {.threadvar.}: ptr GodotMethodBind
proc editable(self: EditorResourcePicker): bool =
  if isNil(editorResourcePickerIsEditableMethodBind):
    editorResourcePickerIsEditableMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"is_editable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorResourcePickerIsEditableMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorResourcePickerSetEditableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editable=`(self: EditorResourcePicker; val: bool) =
  if isNil(editorResourcePickerSetEditableMethodBind):
    editorResourcePickerSetEditableMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"set_editable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorResourcePickerSetEditableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorResourcePickerGetEditedResourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc editedResource(self: EditorResourcePicker): Resource =
  if isNil(editorResourcePickerGetEditedResourceMethodBind):
    editorResourcePickerGetEditedResourceMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"get_edited_resource")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorResourcePickerGetEditedResourceMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorResourcePickerSetEditedResourceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editedResource=`(self: EditorResourcePicker; val: Resource) =
  if isNil(editorResourcePickerSetEditedResourceMethodBind):
    editorResourcePickerSetEditedResourceMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"set_edited_resource")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorResourcePickerSetEditedResourceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorResourcePickerIsToggleModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc toggleMode(self: EditorResourcePicker): bool =
  if isNil(editorResourcePickerIsToggleModeMethodBind):
    editorResourcePickerIsToggleModeMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"is_toggle_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorResourcePickerIsToggleModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorResourcePickerSetToggleModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `toggleMode=`(self: EditorResourcePicker; val: bool) =
  if isNil(editorResourcePickerSetToggleModeMethodBind):
    editorResourcePickerSetToggleModeMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"set_toggle_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  editorResourcePickerSetToggleModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorResourcePickerUnderscorebuttonDrawMethodBind {.threadvar.}: ptr GodotMethodBind
method buttonDraw(self: EditorResourcePicker) =
  if isNil(editorResourcePickerUnderscorebuttonDrawMethodBind):
    editorResourcePickerUnderscorebuttonDrawMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"_button_draw")
  var ptrCallRet: pointer
  editorResourcePickerUnderscorebuttonDrawMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorResourcePickerUnderscorebuttonInputMethodBind {.threadvar.}: ptr GodotMethodBind
method buttonInput(self: EditorResourcePicker; arg0: InputEvent) =
  if isNil(editorResourcePickerUnderscorebuttonInputMethodBind):
    editorResourcePickerUnderscorebuttonInputMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"_button_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorResourcePickerUnderscorebuttonInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorResourcePickerUnderscoreeditMenuCbkMethodBind {.threadvar.}: ptr GodotMethodBind
method editMenuCbk(self: EditorResourcePicker; arg0: int64) =
  if isNil(editorResourcePickerUnderscoreeditMenuCbkMethodBind):
    editorResourcePickerUnderscoreeditMenuCbkMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"_edit_menu_cbk")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  editorResourcePickerUnderscoreeditMenuCbkMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorResourcePickerUnderscorefileQuickSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method fileQuickSelected(self: EditorResourcePicker) =
  if isNil(editorResourcePickerUnderscorefileQuickSelectedMethodBind):
    editorResourcePickerUnderscorefileQuickSelectedMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"_file_quick_selected")
  var ptrCallRet: pointer
  editorResourcePickerUnderscorefileQuickSelectedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorResourcePickerUnderscorefileSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method fileSelected(self: EditorResourcePicker; arg0: string) =
  if isNil(editorResourcePickerUnderscorefileSelectedMethodBind):
    editorResourcePickerUnderscorefileSelectedMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"_file_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorResourcePickerUnderscorefileSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorResourcePickerUnderscoreresourceSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method resourceSelected(self: EditorResourcePicker) =
  if isNil(editorResourcePickerUnderscoreresourceSelectedMethodBind):
    editorResourcePickerUnderscoreresourceSelectedMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"_resource_selected")
  var ptrCallRet: pointer
  editorResourcePickerUnderscoreresourceSelectedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorResourcePickerUnderscoreupdateMenuMethodBind {.threadvar.}: ptr GodotMethodBind
method updateMenu(self: EditorResourcePicker) =
  if isNil(editorResourcePickerUnderscoreupdateMenuMethodBind):
    editorResourcePickerUnderscoreupdateMenuMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"_update_menu")
  var ptrCallRet: pointer
  editorResourcePickerUnderscoreupdateMenuMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var editorResourcePickerUnderscoreupdateResourcePreviewMethodBind {.threadvar.}: ptr GodotMethodBind
method updateResourcePreview(self: EditorResourcePicker; arg0: string;
                             arg1: Texture; arg2: Texture; arg3: int64) =
  if isNil(editorResourcePickerUnderscoreupdateResourcePreviewMethodBind):
    editorResourcePickerUnderscoreupdateResourcePreviewMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"_update_resource_preview")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not arg1.isNil:
    arg1.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  let argToPassToGodot2 = if not arg2.isNil:
    arg2.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = unsafeAddr(arg3)
  var ptrCallRet: pointer
  editorResourcePickerUnderscoreupdateResourcePreviewMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorResourcePickerCanDropDataFwMethodBind {.threadvar.}: ptr GodotMethodBind
proc canDropDataFw(self: EditorResourcePicker; position: Vector2; data: Variant;
                   fromm: Control): bool =
  if isNil(editorResourcePickerCanDropDataFwMethodBind):
    editorResourcePickerCanDropDataFwMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"can_drop_data_fw")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = data.godotVariant
  let argToPassToGodot2 = if not fromm.isNil:
    fromm.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorResourcePickerCanDropDataFwMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorResourcePickerDropDataFwMethodBind {.threadvar.}: ptr GodotMethodBind
proc dropDataFw(self: EditorResourcePicker; position: Vector2; data: Variant;
                fromm: Control) =
  if isNil(editorResourcePickerDropDataFwMethodBind):
    editorResourcePickerDropDataFwMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"drop_data_fw")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = data.godotVariant
  let argToPassToGodot2 = if not fromm.isNil:
    fromm.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  editorResourcePickerDropDataFwMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorResourcePickerGetAllowedTypesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAllowedTypes(self: EditorResourcePicker): PoolStringArray =
  if isNil(editorResourcePickerGetAllowedTypesMethodBind):
    editorResourcePickerGetAllowedTypesMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"get_allowed_types")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  initGodotPoolStringArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  editorResourcePickerGetAllowedTypesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var editorResourcePickerGetDragDataFwMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDragDataFw(self: EditorResourcePicker; position: Vector2; fromm: Control): Variant =
  if isNil(editorResourcePickerGetDragDataFwMethodBind):
    editorResourcePickerGetDragDataFwMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"get_drag_data_fw")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  let argToPassToGodot1 = if not fromm.isNil:
    fromm.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  initGodotVariant(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  editorResourcePickerGetDragDataFwMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var editorResourcePickerHandleMenuSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method handleMenuSelected(self: EditorResourcePicker; id: int64) =
  if isNil(editorResourcePickerHandleMenuSelectedMethodBind):
    editorResourcePickerHandleMenuSelectedMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"handle_menu_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  editorResourcePickerHandleMenuSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorResourcePickerSetCreateOptionsMethodBind {.threadvar.}: ptr GodotMethodBind
method setCreateOptions(self: EditorResourcePicker; menuNode: Object) =
  if isNil(editorResourcePickerSetCreateOptionsMethodBind):
    editorResourcePickerSetCreateOptionsMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"set_create_options")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not menuNode.isNil:
    menuNode.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorResourcePickerSetCreateOptionsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorResourcePickerSetTogglePressedMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTogglePressed(self: EditorResourcePicker; pressed: bool) =
  if isNil(editorResourcePickerSetTogglePressedMethodBind):
    editorResourcePickerSetTogglePressedMethodBind = getMethod(
        cstring"EditorResourcePicker", cstring"set_toggle_pressed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(pressed)
  var ptrCallRet: pointer
  editorResourcePickerSetTogglePressedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
