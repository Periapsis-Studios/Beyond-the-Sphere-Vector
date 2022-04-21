
import
  godot, godottypes, godotinternal, editor_resource_picker

export
  godottypes, editor_resource_picker

proc scriptOwner*(self: EditorScriptPicker): Node {.gcsafe, locks: 0.}
proc `scriptOwner=`*(self: EditorScriptPicker; val: Node) {.gcsafe, locks: 0.}
var editorScriptPickerGetScriptOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc scriptOwner(self: EditorScriptPicker): Node =
  if isNil(editorScriptPickerGetScriptOwnerMethodBind):
    editorScriptPickerGetScriptOwnerMethodBind = getMethod(
        cstring"EditorScriptPicker", cstring"get_script_owner")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorScriptPickerGetScriptOwnerMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorScriptPickerSetScriptOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `scriptOwner=`(self: EditorScriptPicker; val: Node) =
  if isNil(editorScriptPickerSetScriptOwnerMethodBind):
    editorScriptPickerSetScriptOwnerMethodBind = getMethod(
        cstring"EditorScriptPicker", cstring"set_script_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorScriptPickerSetScriptOwnerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
