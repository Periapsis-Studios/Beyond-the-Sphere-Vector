
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  JavaScript = ref object of Object
    ## singleton: true
                                   ## instanciable: false
                                   ## is_reference: false
  
registerClass(JavaScript, "JavaScript", true)
var singletonJavaScript {.threadvar.}: JavaScript
proc createCallback*(objectt: Object; methodd: string): JavaScriptObject {.
    gcsafe, locks: 0.}
proc createObject*(objectt: string; variantArgs: varargs[Variant]): Variant {.
    gcsafe, locks: 0.}
proc downloadBuffer*(buffer: PoolByteArray; name: string;
                     mime: string = "application/octet-stream") {.gcsafe,
    locks: 0.}
proc eval*(code: string; useGlobalExecutionContext: bool = false): Variant {.
    gcsafe, locks: 0.}
proc getInterface*(interfacee: string): JavaScriptObject {.gcsafe, locks: 0.}
var javaScriptCreateCallbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc createCallback(objectt: Object; methodd: string): JavaScriptObject =
  if isNil(singletonJavaScript):
    singletonJavaScript = getSingleton[JavaScript]()
  let self = singletonJavaScript
  if isNil(javaScriptCreateCallbackMethodBind):
    javaScriptCreateCallbackMethodBind = getMethod(cstring"JavaScript",
        cstring"create_callback")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(methodd)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  javaScriptCreateCallbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var javaScriptCreateObjectMethodBind {.threadvar.}: ptr GodotMethodBind
proc createObject(objectt: string; variantArgs: varargs[Variant]): Variant =
  if isNil(singletonJavaScript):
    singletonJavaScript = getSingleton[JavaScript]()
  let self = singletonJavaScript
  if isNil(javaScriptCreateObjectMethodBind):
    javaScriptCreateObjectMethodBind = getMethod(cstring"JavaScript",
        cstring"create_object")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(1 + variantArgs.len)))))
  var variant0: GodotVariant
  var variantString0: GodotString = toGodotString(objectt)
  initGodotVariant(variant0, variantString0)
  argsToPassToGodot[][0] = addr(variant0)
  var idx = 1
  while idx < cint(1 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 1].godotVariant
    inc idx
  let callRet {.used.} = javaScriptCreateObjectMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(1 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variantString0)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var javaScriptDownloadBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc downloadBuffer(buffer: PoolByteArray; name: string;
                    mime: string = "application/octet-stream") =
  if isNil(singletonJavaScript):
    singletonJavaScript = getSingleton[JavaScript]()
  let self = singletonJavaScript
  if isNil(javaScriptDownloadBufferMethodBind):
    javaScriptDownloadBufferMethodBind = getMethod(cstring"JavaScript",
        cstring"download_buffer")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = buffer.godotPoolByteArray
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var argToPassToGodot2 = toGodotString(mime)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  javaScriptDownloadBufferMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)
  deinit(argToPassToGodot2)

var javaScriptEvalMethodBind {.threadvar.}: ptr GodotMethodBind
proc eval(code: string; useGlobalExecutionContext: bool = false): Variant =
  if isNil(singletonJavaScript):
    singletonJavaScript = getSingleton[JavaScript]()
  let self = singletonJavaScript
  if isNil(javaScriptEvalMethodBind):
    javaScriptEvalMethodBind = getMethod(cstring"JavaScript", cstring"eval")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(code)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(useGlobalExecutionContext)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  initGodotVariant(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  javaScriptEvalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                   ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var javaScriptGetInterfaceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInterface(interfacee: string): JavaScriptObject =
  if isNil(singletonJavaScript):
    singletonJavaScript = getSingleton[JavaScript]()
  let self = singletonJavaScript
  if isNil(javaScriptGetInterfaceMethodBind):
    javaScriptGetInterfaceMethodBind = getMethod(cstring"JavaScript",
        cstring"get_interface")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(interfacee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  javaScriptGetInterfaceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
