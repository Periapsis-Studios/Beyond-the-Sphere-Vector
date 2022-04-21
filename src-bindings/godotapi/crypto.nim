
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc constantTimeCompare*(self: Crypto; trusted: PoolByteArray;
                          received: PoolByteArray): bool {.gcsafe, locks: 0.}
proc decrypt*(self: Crypto; key: CryptoKey; ciphertext: PoolByteArray): PoolByteArray {.
    gcsafe, locks: 0.}
proc encrypt*(self: Crypto; key: CryptoKey; plaintext: PoolByteArray): PoolByteArray {.
    gcsafe, locks: 0.}
proc generateRandomBytes*(self: Crypto; size: int64): PoolByteArray {.gcsafe,
    locks: 0.}
proc generateRsa*(self: Crypto; size: int64): CryptoKey {.gcsafe, locks: 0.}
proc generateSelfSignedCertificate*(self: Crypto; key: CryptoKey; issuerName: string = "CN=myserver,O=myorganisation,C=IT";
                                    notBefore: string = "20140101000000";
                                    notAfter: string = "20340101000000"): X509Certificate {.
    gcsafe, locks: 0.}
proc hmacDigest*(self: Crypto; hashType: int64; key: PoolByteArray;
                 msg: PoolByteArray): PoolByteArray {.gcsafe, locks: 0.}
proc sign*(self: Crypto; hashType: int64; hash: PoolByteArray; key: CryptoKey): PoolByteArray {.
    gcsafe, locks: 0.}
proc verify*(self: Crypto; hashType: int64; hash: PoolByteArray;
             signature: PoolByteArray; key: CryptoKey): bool {.gcsafe, locks: 0.}
var cryptoConstantTimeCompareMethodBind {.threadvar.}: ptr GodotMethodBind
proc constantTimeCompare(self: Crypto; trusted: PoolByteArray;
                         received: PoolByteArray): bool =
  if isNil(cryptoConstantTimeCompareMethodBind):
    cryptoConstantTimeCompareMethodBind = getMethod(cstring"Crypto",
        cstring"constant_time_compare")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = trusted.godotPoolByteArray
  argsToPassToGodot[][1] = received.godotPoolByteArray
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cryptoConstantTimeCompareMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cryptoDecryptMethodBind {.threadvar.}: ptr GodotMethodBind
proc decrypt(self: Crypto; key: CryptoKey; ciphertext: PoolByteArray): PoolByteArray =
  if isNil(cryptoDecryptMethodBind):
    cryptoDecryptMethodBind = getMethod(cstring"Crypto", cstring"decrypt")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not key.isNil:
    key.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = ciphertext.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  initGodotPoolByteArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  cryptoDecryptMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                  ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var cryptoEncryptMethodBind {.threadvar.}: ptr GodotMethodBind
proc encrypt(self: Crypto; key: CryptoKey; plaintext: PoolByteArray): PoolByteArray =
  if isNil(cryptoEncryptMethodBind):
    cryptoEncryptMethodBind = getMethod(cstring"Crypto", cstring"encrypt")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not key.isNil:
    key.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = plaintext.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  initGodotPoolByteArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  cryptoEncryptMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                  ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var cryptoGenerateRandomBytesMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateRandomBytes(self: Crypto; size: int64): PoolByteArray =
  if isNil(cryptoGenerateRandomBytesMethodBind):
    cryptoGenerateRandomBytesMethodBind = getMethod(cstring"Crypto",
        cstring"generate_random_bytes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  initGodotPoolByteArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  cryptoGenerateRandomBytesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var cryptoGenerateRsaMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateRsa(self: Crypto; size: int64): CryptoKey =
  if isNil(cryptoGenerateRsaMethodBind):
    cryptoGenerateRsaMethodBind = getMethod(cstring"Crypto",
        cstring"generate_rsa")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cryptoGenerateRsaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cryptoGenerateSelfSignedCertificateMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateSelfSignedCertificate(self: Crypto; key: CryptoKey; issuerName: string = "CN=myserver,O=myorganisation,C=IT";
                                   notBefore: string = "20140101000000";
                                   notAfter: string = "20340101000000"): X509Certificate =
  if isNil(cryptoGenerateSelfSignedCertificateMethodBind):
    cryptoGenerateSelfSignedCertificateMethodBind = getMethod(cstring"Crypto",
        cstring"generate_self_signed_certificate")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not key.isNil:
    key.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(issuerName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var argToPassToGodot2 = toGodotString(notBefore)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var argToPassToGodot3 = toGodotString(notAfter)
  argsToPassToGodot[][3] = unsafeAddr(argToPassToGodot3)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cryptoGenerateSelfSignedCertificateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)
  deinit(argToPassToGodot2)
  deinit(argToPassToGodot3)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cryptoHmacDigestMethodBind {.threadvar.}: ptr GodotMethodBind
proc hmacDigest(self: Crypto; hashType: int64; key: PoolByteArray;
                msg: PoolByteArray): PoolByteArray =
  if isNil(cryptoHmacDigestMethodBind):
    cryptoHmacDigestMethodBind = getMethod(cstring"Crypto",
        cstring"hmac_digest")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(hashType)
  argsToPassToGodot[][1] = key.godotPoolByteArray
  argsToPassToGodot[][2] = msg.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  initGodotPoolByteArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  cryptoHmacDigestMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var cryptoSignMethodBind {.threadvar.}: ptr GodotMethodBind
proc sign(self: Crypto; hashType: int64; hash: PoolByteArray; key: CryptoKey): PoolByteArray =
  if isNil(cryptoSignMethodBind):
    cryptoSignMethodBind = getMethod(cstring"Crypto", cstring"sign")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(hashType)
  argsToPassToGodot[][1] = hash.godotPoolByteArray
  let argToPassToGodot2 = if not key.isNil:
    key.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolByteArray
  initGodotPoolByteArray(ptrCallVal)
  ptrCallRet = addr(ptrCallVal)
  cryptoSignMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = newPoolByteArray(ptrCallVal)

var cryptoVerifyMethodBind {.threadvar.}: ptr GodotMethodBind
proc verify(self: Crypto; hashType: int64; hash: PoolByteArray;
            signature: PoolByteArray; key: CryptoKey): bool =
  if isNil(cryptoVerifyMethodBind):
    cryptoVerifyMethodBind = getMethod(cstring"Crypto", cstring"verify")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(hashType)
  argsToPassToGodot[][1] = hash.godotPoolByteArray
  argsToPassToGodot[][2] = signature.godotPoolByteArray
  let argToPassToGodot3 = if not key.isNil:
    key.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cryptoVerifyMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
