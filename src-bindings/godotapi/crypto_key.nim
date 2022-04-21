
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc isPublicOnly*(self: CryptoKey): bool {.gcsafe, locks: 0.}
proc load*(self: CryptoKey; path: string; publicOnly: bool = false): Error {.
    gcsafe, locks: 0.}
proc loadFromString*(self: CryptoKey; stringKey: string;
                     publicOnly: bool = false): Error {.gcsafe, locks: 0.}
proc save*(self: CryptoKey; path: string; publicOnly: bool = false): Error {.
    gcsafe, locks: 0.}
proc saveToString*(self: CryptoKey; publicOnly: bool = false): string {.gcsafe,
    locks: 0.}
var cryptoKeyIsPublicOnlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPublicOnly(self: CryptoKey): bool =
  if isNil(cryptoKeyIsPublicOnlyMethodBind):
    cryptoKeyIsPublicOnlyMethodBind = getMethod(cstring"CryptoKey",
        cstring"is_public_only")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cryptoKeyIsPublicOnlyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cryptoKeyLoadMethodBind {.threadvar.}: ptr GodotMethodBind
proc load(self: CryptoKey; path: string; publicOnly: bool = false): Error =
  if isNil(cryptoKeyLoadMethodBind):
    cryptoKeyLoadMethodBind = getMethod(cstring"CryptoKey", cstring"load")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(publicOnly)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  cryptoKeyLoadMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                  ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var cryptoKeyLoadFromStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc loadFromString(self: CryptoKey; stringKey: string; publicOnly: bool = false): Error =
  if isNil(cryptoKeyLoadFromStringMethodBind):
    cryptoKeyLoadFromStringMethodBind = getMethod(cstring"CryptoKey",
        cstring"load_from_string")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(stringKey)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(publicOnly)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  cryptoKeyLoadFromStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var cryptoKeySaveMethodBind {.threadvar.}: ptr GodotMethodBind
proc save(self: CryptoKey; path: string; publicOnly: bool = false): Error =
  if isNil(cryptoKeySaveMethodBind):
    cryptoKeySaveMethodBind = getMethod(cstring"CryptoKey", cstring"save")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(publicOnly)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  cryptoKeySaveMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                  ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var cryptoKeySaveToStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc saveToString(self: CryptoKey; publicOnly: bool = false): string =
  if isNil(cryptoKeySaveToStringMethodBind):
    cryptoKeySaveToStringMethodBind = getMethod(cstring"CryptoKey",
        cstring"save_to_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(publicOnly)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  cryptoKeySaveToStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)
