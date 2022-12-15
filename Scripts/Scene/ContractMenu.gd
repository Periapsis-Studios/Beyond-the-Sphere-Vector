extends Control


var selected: int
var contracts: Array


func _ready():
	contracts = Contracts.contracts + Contracts.accepted
	if contracts.size() > 4:
		$VScrollBar.max_value = contracts.size() - 4
	else:
		$VScrollBar.max_value = 0
	displayContracts()
	for contract in $ListBackground.get_children():
		contract.connect("selected", self, "contractSelected")
	
	
func contractSelected(number):
	selected = number
	$No.disabled = false
	if get_node("ListBackground/Contract" + str(number) + "/ProgressBar").visible:
		return
	$Yes.disabled = false


func exitPressed():
	self.queue_free()


func displayContracts():
	if not contracts.empty():
		for i in range(1, 5):
			if i + $VScrollBar.value - 1 < contracts.size():
				get_node("ListBackground/Contract" + str(i)).visible = true
				get_node("ListBackground/Contract" + str(i) + "/Button").disabled = false
				get_node("ListBackground/Contract" + str(i) + "/Button").focus_mode = 2
				get_node("ListBackground/Contract" + str(i) + "/Cash").visible = true
				get_node("ListBackground/Contract" + str(i) + "/Science").visible = true
				get_node("ListBackground/Contract" + str(i) + "/Type").text = tr(contracts[i + $VScrollBar.value - 1].type)
				var money = contracts[i + $VScrollBar.value - 1].rewardCash
				get_node("ListBackground/Contract" + str(i) + "/Cash/RewardCash").text = Data.getMoneyString(money, 3)[0] + Data.getMoneyString(money, 3)[1]
				get_node("ListBackground/Contract" + str(i) + "/Science/RewardScience").text = str(contracts[i + $VScrollBar.value - 1].rewardSci)
				if contracts[i + $VScrollBar.value - 1].accepted:
					get_node("ListBackground/Contract" + str(i) + "/ProgressBar").visible = true
					get_node("ListBackground/Contract" + str(i) + "/ProgressBar").value = contracts[i + $VScrollBar.value - 1].completion
				else:
					get_node("ListBackground/Contract" + str(i) + "/ProgressBar").visible = false
			else:
				get_node("ListBackground/Contract" + str(i)).visible = false
				get_node("ListBackground/Contract" + str(i) + "/Button").disabled = true
	else:
		$ListBackground/Contract1/Type.text = "No Contracts"
		
		
func yesPressed():
	accept(contracts[selected - 1 + $VScrollBar.value])


func accept(contract: Contracts.Contract):
	if contract.accepted:
		return
	contract.accepted = true
	Contracts.contracts.erase(contract)
	Contracts.contracts.sort_custom(Contracts, "organizeArray")
	Contracts.accepted.append(contract)
	contracts = Contracts.contracts + Contracts.accepted
	contract.start()
	displayContracts()
	
	
func deny(contract: Contracts.Contract):
	if not contract.accepted:
		Contracts.contracts.erase(contract)
	if contract.accepted:
		Contracts.accepted.erase(contract)
	contracts = Contracts.contracts + Contracts.accepted
	if contracts.size() > 4:
		$VScrollBar.max_value = contracts.size() - 4
	else:
		$VScrollBar.max_value = 0
	displayContracts()


func scrollChange(_value):
	displayContracts()


func noPressed():
	deny(contracts[selected - 1 + $VScrollBar.value])
