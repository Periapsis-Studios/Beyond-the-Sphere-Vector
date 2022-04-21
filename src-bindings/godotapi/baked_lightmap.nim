
import
  godot, godottypes, godotinternal, visual_instance

export
  godottypes, visual_instance

const
  BAKE_ERROR_CANT_CREATE_IMAGE* = 3'i64
  BAKE_ERROR_INVALID_MESH* = 5'i64
  BAKE_ERROR_LIGHTMAP_SIZE* = 4'i64
  BAKE_ERROR_NO_LIGHTMAPPER* = 7'i64
  BAKE_ERROR_NO_MESHES* = 2'i64
  BAKE_ERROR_NO_ROOT* = 8'i64
  BAKE_ERROR_NO_SAVE_PATH* = 1'i64
  BAKE_ERROR_OK* = 0'i64
  BAKE_ERROR_USER_ABORTED* = 6'i64
  BAKE_QUALITY_HIGH* = 2'i64
  BAKE_QUALITY_LOW* = 0'i64
  BAKE_QUALITY_MEDIUM* = 1'i64
  BAKE_QUALITY_ULTRA* = 3'i64
  ENVIRONMENT_MODE_CUSTOM_COLOR* = 3'i64
  ENVIRONMENT_MODE_CUSTOM_SKY* = 2'i64
  ENVIRONMENT_MODE_DISABLED* = 0'i64
  ENVIRONMENT_MODE_SCENE* = 1'i64
proc atlasGenerate*(self: BakedLightmap): bool {.gcsafe, locks: 0.}
proc `atlasGenerate=`*(self: BakedLightmap; val: bool) {.gcsafe, locks: 0.}
proc atlasMaxSize*(self: BakedLightmap): int64 {.gcsafe, locks: 0.}
proc `atlasMaxSize=`*(self: BakedLightmap; val: int64) {.gcsafe, locks: 0.}
proc bias*(self: BakedLightmap): float64 {.gcsafe, locks: 0.}
proc `bias=`*(self: BakedLightmap; val: float64) {.gcsafe, locks: 0.}
proc bounceIndirectEnergy*(self: BakedLightmap): float64 {.gcsafe, locks: 0.}
proc `bounceIndirectEnergy=`*(self: BakedLightmap; val: float64) {.gcsafe,
    locks: 0.}
proc bounces*(self: BakedLightmap): int64 {.gcsafe, locks: 0.}
proc `bounces=`*(self: BakedLightmap; val: int64) {.gcsafe, locks: 0.}
proc captureCellSize*(self: BakedLightmap): float64 {.gcsafe, locks: 0.}
proc `captureCellSize=`*(self: BakedLightmap; val: float64) {.gcsafe, locks: 0.}
proc captureEnabled*(self: BakedLightmap): bool {.gcsafe, locks: 0.}
proc `captureEnabled=`*(self: BakedLightmap; val: bool) {.gcsafe, locks: 0.}
proc capturePropagation*(self: BakedLightmap): float64 {.gcsafe, locks: 0.}
proc `capturePropagation=`*(self: BakedLightmap; val: float64) {.gcsafe,
    locks: 0.}
proc captureQuality*(self: BakedLightmap): int64 {.gcsafe, locks: 0.}
proc `captureQuality=`*(self: BakedLightmap; val: int64) {.gcsafe, locks: 0.}
proc defaultTexelsPerUnit*(self: BakedLightmap): float64 {.gcsafe, locks: 0.}
proc `defaultTexelsPerUnit=`*(self: BakedLightmap; val: float64) {.gcsafe,
    locks: 0.}
proc environmentCustomColor*(self: BakedLightmap): Color {.gcsafe, locks: 0.}
proc `environmentCustomColor=`*(self: BakedLightmap; val: Color) {.gcsafe,
    locks: 0.}
proc environmentCustomEnergy*(self: BakedLightmap): float64 {.gcsafe, locks: 0.}
proc `environmentCustomEnergy=`*(self: BakedLightmap; val: float64) {.gcsafe,
    locks: 0.}
proc environmentCustomSky*(self: BakedLightmap): Sky {.gcsafe, locks: 0.}
proc `environmentCustomSky=`*(self: BakedLightmap; val: Sky) {.gcsafe, locks: 0.}
proc environmentCustomSkyRotationDegrees*(self: BakedLightmap): Vector3 {.
    gcsafe, locks: 0.}
proc `environmentCustomSkyRotationDegrees=`*(self: BakedLightmap; val: Vector3) {.
    gcsafe, locks: 0.}
proc environmentMinLight*(self: BakedLightmap): Color {.gcsafe, locks: 0.}
proc `environmentMinLight=`*(self: BakedLightmap; val: Color) {.gcsafe, locks: 0.}
proc environmentMode*(self: BakedLightmap): int64 {.gcsafe, locks: 0.}
proc `environmentMode=`*(self: BakedLightmap; val: int64) {.gcsafe, locks: 0.}
proc extents*(self: BakedLightmap): Vector3 {.gcsafe, locks: 0.}
proc `extents=`*(self: BakedLightmap; val: Vector3) {.gcsafe, locks: 0.}
proc imagePath*(self: BakedLightmap): string {.gcsafe, locks: 0.}
proc `imagePath=`*(self: BakedLightmap; val: string) {.gcsafe, locks: 0.}
proc lightData*(self: BakedLightmap): BakedLightmapData {.gcsafe, locks: 0.}
proc `lightData=`*(self: BakedLightmap; val: BakedLightmapData) {.gcsafe,
    locks: 0.}
proc quality*(self: BakedLightmap): int64 {.gcsafe, locks: 0.}
proc `quality=`*(self: BakedLightmap; val: int64) {.gcsafe, locks: 0.}
proc useColor*(self: BakedLightmap): bool {.gcsafe, locks: 0.}
proc `useColor=`*(self: BakedLightmap; val: bool) {.gcsafe, locks: 0.}
proc useDenoiser*(self: BakedLightmap): bool {.gcsafe, locks: 0.}
proc `useDenoiser=`*(self: BakedLightmap; val: bool) {.gcsafe, locks: 0.}
proc useHdr*(self: BakedLightmap): bool {.gcsafe, locks: 0.}
proc `useHdr=`*(self: BakedLightmap; val: bool) {.gcsafe, locks: 0.}
proc bake*(self: BakedLightmap; fromNode: Node = nil; dataSavePath: string = ""): int64 {.
    gcsafe, locks: 0.}
var bakedLightmapIsGenerateAtlasEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc atlasGenerate(self: BakedLightmap): bool =
  if isNil(bakedLightmapIsGenerateAtlasEnabledMethodBind):
    bakedLightmapIsGenerateAtlasEnabledMethodBind = getMethod(
        cstring"BakedLightmap", cstring"is_generate_atlas_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapIsGenerateAtlasEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetGenerateAtlasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `atlasGenerate=`(self: BakedLightmap; val: bool) =
  if isNil(bakedLightmapSetGenerateAtlasMethodBind):
    bakedLightmapSetGenerateAtlasMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_generate_atlas")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetGenerateAtlasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetMaxAtlasSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc atlasMaxSize(self: BakedLightmap): int64 =
  if isNil(bakedLightmapGetMaxAtlasSizeMethodBind):
    bakedLightmapGetMaxAtlasSizeMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_max_atlas_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetMaxAtlasSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetMaxAtlasSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `atlasMaxSize=`(self: BakedLightmap; val: int64) =
  if isNil(bakedLightmapSetMaxAtlasSizeMethodBind):
    bakedLightmapSetMaxAtlasSizeMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_max_atlas_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetMaxAtlasSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc bias(self: BakedLightmap): float64 =
  if isNil(bakedLightmapGetBiasMethodBind):
    bakedLightmapGetBiasMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_bias")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetBiasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bias=`(self: BakedLightmap; val: float64) =
  if isNil(bakedLightmapSetBiasMethodBind):
    bakedLightmapSetBiasMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_bias")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetBiasMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bakedLightmapGetBounceIndirectEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc bounceIndirectEnergy(self: BakedLightmap): float64 =
  if isNil(bakedLightmapGetBounceIndirectEnergyMethodBind):
    bakedLightmapGetBounceIndirectEnergyMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_bounce_indirect_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetBounceIndirectEnergyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetBounceIndirectEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bounceIndirectEnergy=`(self: BakedLightmap; val: float64) =
  if isNil(bakedLightmapSetBounceIndirectEnergyMethodBind):
    bakedLightmapSetBounceIndirectEnergyMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_bounce_indirect_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetBounceIndirectEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetBouncesMethodBind {.threadvar.}: ptr GodotMethodBind
proc bounces(self: BakedLightmap): int64 =
  if isNil(bakedLightmapGetBouncesMethodBind):
    bakedLightmapGetBouncesMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_bounces")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetBouncesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetBouncesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bounces=`(self: BakedLightmap; val: int64) =
  if isNil(bakedLightmapSetBouncesMethodBind):
    bakedLightmapSetBouncesMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_bounces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetBouncesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bakedLightmapGetCaptureCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc captureCellSize(self: BakedLightmap): float64 =
  if isNil(bakedLightmapGetCaptureCellSizeMethodBind):
    bakedLightmapGetCaptureCellSizeMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_capture_cell_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetCaptureCellSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetCaptureCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `captureCellSize=`(self: BakedLightmap; val: float64) =
  if isNil(bakedLightmapSetCaptureCellSizeMethodBind):
    bakedLightmapSetCaptureCellSizeMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_capture_cell_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetCaptureCellSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetCaptureEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc captureEnabled(self: BakedLightmap): bool =
  if isNil(bakedLightmapGetCaptureEnabledMethodBind):
    bakedLightmapGetCaptureEnabledMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_capture_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetCaptureEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetCaptureEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `captureEnabled=`(self: BakedLightmap; val: bool) =
  if isNil(bakedLightmapSetCaptureEnabledMethodBind):
    bakedLightmapSetCaptureEnabledMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_capture_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetCaptureEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetCapturePropagationMethodBind {.threadvar.}: ptr GodotMethodBind
proc capturePropagation(self: BakedLightmap): float64 =
  if isNil(bakedLightmapGetCapturePropagationMethodBind):
    bakedLightmapGetCapturePropagationMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_capture_propagation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetCapturePropagationMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetCapturePropagationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `capturePropagation=`(self: BakedLightmap; val: float64) =
  if isNil(bakedLightmapSetCapturePropagationMethodBind):
    bakedLightmapSetCapturePropagationMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_capture_propagation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetCapturePropagationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetCaptureQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc captureQuality(self: BakedLightmap): int64 =
  if isNil(bakedLightmapGetCaptureQualityMethodBind):
    bakedLightmapGetCaptureQualityMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_capture_quality")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetCaptureQualityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetCaptureQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `captureQuality=`(self: BakedLightmap; val: int64) =
  if isNil(bakedLightmapSetCaptureQualityMethodBind):
    bakedLightmapSetCaptureQualityMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_capture_quality")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetCaptureQualityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetDefaultTexelsPerUnitMethodBind {.threadvar.}: ptr GodotMethodBind
proc defaultTexelsPerUnit(self: BakedLightmap): float64 =
  if isNil(bakedLightmapGetDefaultTexelsPerUnitMethodBind):
    bakedLightmapGetDefaultTexelsPerUnitMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_default_texels_per_unit")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetDefaultTexelsPerUnitMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetDefaultTexelsPerUnitMethodBind {.threadvar.}: ptr GodotMethodBind
proc `defaultTexelsPerUnit=`(self: BakedLightmap; val: float64) =
  if isNil(bakedLightmapSetDefaultTexelsPerUnitMethodBind):
    bakedLightmapSetDefaultTexelsPerUnitMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_default_texels_per_unit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetDefaultTexelsPerUnitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetEnvironmentCustomColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentCustomColor(self: BakedLightmap): Color =
  if isNil(bakedLightmapGetEnvironmentCustomColorMethodBind):
    bakedLightmapGetEnvironmentCustomColorMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_environment_custom_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetEnvironmentCustomColorMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var bakedLightmapSetEnvironmentCustomColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `environmentCustomColor=`(self: BakedLightmap; val: Color) =
  if isNil(bakedLightmapSetEnvironmentCustomColorMethodBind):
    bakedLightmapSetEnvironmentCustomColorMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_environment_custom_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetEnvironmentCustomColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetEnvironmentCustomEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentCustomEnergy(self: BakedLightmap): float64 =
  if isNil(bakedLightmapGetEnvironmentCustomEnergyMethodBind):
    bakedLightmapGetEnvironmentCustomEnergyMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_environment_custom_energy")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetEnvironmentCustomEnergyMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var bakedLightmapSetEnvironmentCustomEnergyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `environmentCustomEnergy=`(self: BakedLightmap; val: float64) =
  if isNil(bakedLightmapSetEnvironmentCustomEnergyMethodBind):
    bakedLightmapSetEnvironmentCustomEnergyMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_environment_custom_energy")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetEnvironmentCustomEnergyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetEnvironmentCustomSkyMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentCustomSky(self: BakedLightmap): Sky =
  if isNil(bakedLightmapGetEnvironmentCustomSkyMethodBind):
    bakedLightmapGetEnvironmentCustomSkyMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_environment_custom_sky")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  bakedLightmapGetEnvironmentCustomSkyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var bakedLightmapSetEnvironmentCustomSkyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `environmentCustomSky=`(self: BakedLightmap; val: Sky) =
  if isNil(bakedLightmapSetEnvironmentCustomSkyMethodBind):
    bakedLightmapSetEnvironmentCustomSkyMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_environment_custom_sky")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  bakedLightmapSetEnvironmentCustomSkyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetEnvironmentCustomSkyRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentCustomSkyRotationDegrees(self: BakedLightmap): Vector3 =
  if isNil(bakedLightmapGetEnvironmentCustomSkyRotationDegreesMethodBind):
    bakedLightmapGetEnvironmentCustomSkyRotationDegreesMethodBind = getMethod(
        cstring"BakedLightmap",
        cstring"get_environment_custom_sky_rotation_degrees")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetEnvironmentCustomSkyRotationDegreesMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var bakedLightmapSetEnvironmentCustomSkyRotationDegreesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `environmentCustomSkyRotationDegrees=`(self: BakedLightmap; val: Vector3) =
  if isNil(bakedLightmapSetEnvironmentCustomSkyRotationDegreesMethodBind):
    bakedLightmapSetEnvironmentCustomSkyRotationDegreesMethodBind = getMethod(
        cstring"BakedLightmap",
        cstring"set_environment_custom_sky_rotation_degrees")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetEnvironmentCustomSkyRotationDegreesMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var bakedLightmapGetEnvironmentMinLightMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentMinLight(self: BakedLightmap): Color =
  if isNil(bakedLightmapGetEnvironmentMinLightMethodBind):
    bakedLightmapGetEnvironmentMinLightMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_environment_min_light")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetEnvironmentMinLightMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetEnvironmentMinLightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `environmentMinLight=`(self: BakedLightmap; val: Color) =
  if isNil(bakedLightmapSetEnvironmentMinLightMethodBind):
    bakedLightmapSetEnvironmentMinLightMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_environment_min_light")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetEnvironmentMinLightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetEnvironmentModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc environmentMode(self: BakedLightmap): int64 =
  if isNil(bakedLightmapGetEnvironmentModeMethodBind):
    bakedLightmapGetEnvironmentModeMethodBind = getMethod(
        cstring"BakedLightmap", cstring"get_environment_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetEnvironmentModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetEnvironmentModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `environmentMode=`(self: BakedLightmap; val: int64) =
  if isNil(bakedLightmapSetEnvironmentModeMethodBind):
    bakedLightmapSetEnvironmentModeMethodBind = getMethod(
        cstring"BakedLightmap", cstring"set_environment_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetEnvironmentModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc extents(self: BakedLightmap): Vector3 =
  if isNil(bakedLightmapGetExtentsMethodBind):
    bakedLightmapGetExtentsMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_extents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetExtentsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetExtentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `extents=`(self: BakedLightmap; val: Vector3) =
  if isNil(bakedLightmapSetExtentsMethodBind):
    bakedLightmapSetExtentsMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_extents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetExtentsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bakedLightmapGetImagePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc imagePath(self: BakedLightmap): string =
  if isNil(bakedLightmapGetImagePathMethodBind):
    bakedLightmapGetImagePathMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_image_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  bakedLightmapGetImagePathMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var bakedLightmapSetImagePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `imagePath=`(self: BakedLightmap; val: string) =
  if isNil(bakedLightmapSetImagePathMethodBind):
    bakedLightmapSetImagePathMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_image_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  bakedLightmapSetImagePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var bakedLightmapGetLightDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightData(self: BakedLightmap): BakedLightmapData =
  if isNil(bakedLightmapGetLightDataMethodBind):
    bakedLightmapGetLightDataMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_light_data")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  bakedLightmapGetLightDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var bakedLightmapSetLightDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lightData=`(self: BakedLightmap; val: BakedLightmapData) =
  if isNil(bakedLightmapSetLightDataMethodBind):
    bakedLightmapSetLightDataMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_light_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  bakedLightmapSetLightDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapGetBakeQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc quality(self: BakedLightmap): int64 =
  if isNil(bakedLightmapGetBakeQualityMethodBind):
    bakedLightmapGetBakeQualityMethodBind = getMethod(cstring"BakedLightmap",
        cstring"get_bake_quality")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapGetBakeQualityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetBakeQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `quality=`(self: BakedLightmap; val: int64) =
  if isNil(bakedLightmapSetBakeQualityMethodBind):
    bakedLightmapSetBakeQualityMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_bake_quality")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetBakeQualityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapIsUsingColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc useColor(self: BakedLightmap): bool =
  if isNil(bakedLightmapIsUsingColorMethodBind):
    bakedLightmapIsUsingColorMethodBind = getMethod(cstring"BakedLightmap",
        cstring"is_using_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapIsUsingColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetUseColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useColor=`(self: BakedLightmap; val: bool) =
  if isNil(bakedLightmapSetUseColorMethodBind):
    bakedLightmapSetUseColorMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_use_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetUseColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapIsUsingDenoiserMethodBind {.threadvar.}: ptr GodotMethodBind
proc useDenoiser(self: BakedLightmap): bool =
  if isNil(bakedLightmapIsUsingDenoiserMethodBind):
    bakedLightmapIsUsingDenoiserMethodBind = getMethod(cstring"BakedLightmap",
        cstring"is_using_denoiser")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapIsUsingDenoiserMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var bakedLightmapSetUseDenoiserMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useDenoiser=`(self: BakedLightmap; val: bool) =
  if isNil(bakedLightmapSetUseDenoiserMethodBind):
    bakedLightmapSetUseDenoiserMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_use_denoiser")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetUseDenoiserMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bakedLightmapIsUsingHdrMethodBind {.threadvar.}: ptr GodotMethodBind
proc useHdr(self: BakedLightmap): bool =
  if isNil(bakedLightmapIsUsingHdrMethodBind):
    bakedLightmapIsUsingHdrMethodBind = getMethod(cstring"BakedLightmap",
        cstring"is_using_hdr")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapIsUsingHdrMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bakedLightmapSetUseHdrMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useHdr=`(self: BakedLightmap; val: bool) =
  if isNil(bakedLightmapSetUseHdrMethodBind):
    bakedLightmapSetUseHdrMethodBind = getMethod(cstring"BakedLightmap",
        cstring"set_use_hdr")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  bakedLightmapSetUseHdrMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bakedLightmapBakeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bake(self: BakedLightmap; fromNode: Node = nil; dataSavePath: string = ""): int64 =
  if isNil(bakedLightmapBakeMethodBind):
    bakedLightmapBakeMethodBind = getMethod(cstring"BakedLightmap",
        cstring"bake")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not fromNode.isNil:
    fromNode.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(dataSavePath)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bakedLightmapBakeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot1)
