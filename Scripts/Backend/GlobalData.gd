extends Node

var validCouples = {"RUS_PROBE": "RUS_DROGUE", "RUS_DROGUE": "RUS_PROBE"}



var soyuz = {
	"portTypes": {1: "RUS_PROBE"},
	"portPos": {1: Vector2(0, -930)},
	"portRot": {1: 0},
	"isDocked": {1: false}
}

var salyut1 = {
	"portTypes": {1: "RUS_DROGUE"},
	"portPos": {1: Vector2(0, -975)},
	"portRot": {1: 0},
	"isDocked": {1: false}
}

var modules = {"Soyuz": soyuz, "Salyut": salyut1}
var unlockedModules = ["Soyuz", "Salyut"]
