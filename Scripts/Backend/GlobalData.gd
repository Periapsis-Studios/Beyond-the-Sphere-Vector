extends Node

var validCouples = {"RUS_PROBE": "RUS_DROGUE", "RUS_DROGUE": "RUS_PROBE"}
var saveName: String
var money: int
var science: int


var soyuz = {
	"portTypes": {1: "RUS_PROBE"},
	"portPos": {1: Vector2(0, -930)},
	"portRot": {1: 0},
	"portNum": 1
}

var salyut1 = {
	"portTypes": {1: "RUS_DROGUE"},
	"portPos": {1: Vector2(0, -975)},
	"portRot": {1: 0},
	"portNum": 1
}


var modules = {
	"Soyuz": soyuz,
	"Salyut": salyut1
}
var unlockedModules = [
	"Soyuz",
	"Salyut"
]
