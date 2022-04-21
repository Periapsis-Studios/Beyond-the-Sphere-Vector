
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

proc uniformName*(self: VisualShaderNodeUniformRef): string {.gcsafe, locks: 0.}
proc `uniformName=`*(self: VisualShaderNodeUniformRef; val: string) {.gcsafe,
    locks: 0.}
var visualShaderNodeUniformRefGetUniformNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc uniformName(self: VisualShaderNodeUniformRef): string =
  if isNil(visualShaderNodeUniformRefGetUniformNameMethodBind):
    visualShaderNodeUniformRefGetUniformNameMethodBind = getMethod(
        cstring"VisualShaderNodeUniformRef", cstring"get_uniform_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeUniformRefGetUniformNameMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeUniformRefSetUniformNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `uniformName=`(self: VisualShaderNodeUniformRef; val: string) =
  if isNil(visualShaderNodeUniformRefSetUniformNameMethodBind):
    visualShaderNodeUniformRefSetUniformNameMethodBind = getMethod(
        cstring"VisualShaderNodeUniformRef", cstring"set_uniform_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualShaderNodeUniformRefSetUniformNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
