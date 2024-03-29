extends Node


var lastContract: int = 0
var contracts: Array
var accepted: Array
var timer: Timer
var types = {
	"spyPhotos": [[100, 200], [0, 0], [30, 60]],
	"medicalExperiments": [[50, 100], [1, 3], [30, 90]],
	"techRnD": [[20, 50], [3, 5], [60, 120]],
	"microbiology": [[50, 80], [2, 5], [30, 60]],
	"crewSci": [[40, 70], [3, 6], [20, 50]],
	"solarObservation": [[20, 40], [3, 7], [20, 70]]
}
var unlockedTypes = [
	"medicalExperiments",
	"techRnD",
	"microbiology",
	"crewSci"
]
var cap = 5

signal contractCompleted()


class Contract:
	var accepted: bool
	var completion: int
	var length: int
	var num: int
	var type: String
	var rewardCash: int
	var rewardSci: int
	var timer: Timer
	
	func _init(typeIn: String, rewardIn: int, science: int, lengthIn: int, completeIn: int = 0, acceptedIn: bool = false):
		self.type = typeIn
		self.rewardCash = rewardIn
		self.rewardSci = science
		self.num = Contracts.lastContract
		self.accepted = acceptedIn
		self.length = lengthIn
		self.completion = completeIn
		Contracts.lastContract += 1
		Contracts.contracts.append(self)
		Contracts.contracts.sort_custom(Contracts, "organizeArray")
		
		
	func start():
		timer = Timer.new()
		if Station.dockedModules.size() == 0:
			timer.set_wait_time(1)
		else:
			timer.set_wait_time(self.length / 100.0 / (Contracts.accepted.size() * 1.0 / Station.dockedModules.size()))
		timer.set_script(load("res://Scripts/Backend/ContractTimer.gd"))
		timer.connect("timeout", self, "timeout")
		Contracts.add_child(timer)
		timer.start()
		
		
	func stop():
		timer.stop()
		
		
	func resume():
		timer.start()
		
		
	func timeout():
		if Station.dockedModules.size() == 0:
			return
		timer.set_wait_time(self.length / 100.0 / (Contracts.accepted.size() * 1.0 / Station.dockedModules.size()))
		self.completion += 1
		if self.completion >= 100:
			stop()
			Contracts.accepted.erase(self)
			Data.money += self.rewardCash
			Data.science += self.rewardSci
			Contracts.complete()
			timer.queue_free()
			Contracts.timeout()


func organizeArray(a, b):
	if a.rewardCash > b.rewardCash:
		return true
	return false


func _ready():
	timer = Timer.new()
	timer.set_wait_time(randi()%18+12)
	timer.set_one_shot(true)
	self.add_child(timer)
	timer.start()
	timer.connect("timeout", self, "timeout")
	
	
func timeout():
	timer.set_wait_time(randi()%40+30)
	timer.set_one_shot(true)
	timer.start()
	if accepted.size() + contracts.size() < cap:
		generate()


func generate():
	var availableTypes = unlockedTypes
	
	randomize()
	var type = availableTypes[randi()%(availableTypes.size() - 1)]
	var rewardRange = types[type][0]
	var sciRange = types[type][1]
	var cash = randi()%(rewardRange[1] - rewardRange[0]) + rewardRange[0]
	var lengthRange = types[type][2]
	cash *= 1_000_000
	Contract.new(
		type,
		cash,
		randi()%(sciRange[1] - sciRange[0] + 1) + sciRange[0],
		randi()%(lengthRange[1] - lengthRange[0]) + lengthRange[0]
	)
	
	
func complete():
	emit_signal("contractCompleted")
