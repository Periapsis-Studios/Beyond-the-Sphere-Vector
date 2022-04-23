import json
import std / strformat
import mainData

var locale*: string = "en"
let parsedLocale* = parseFile(fmt"{progLocation}/locales/{locale}.json")