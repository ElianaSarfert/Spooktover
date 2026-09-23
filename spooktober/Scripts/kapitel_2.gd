extends Node


var choices = ["Auszubildender", "Betrunkener", "Müde Dame", "Putzkraft", "Servicekraft"]
var second_choice = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("diningroominitial")
	Dialogic.signal_event.connect(_on_signal)
	

func _on_signal(input_signal):
	if second_choice == true:
		input_signal = Dialogic.VAR.get_variable(input_signal)
	print("input: " + input_signal)
	match input_signal:
		"Betrunkener": 
			print("1")
			Dialogic.VAR.Chosen = "Betrunkener"
			remove_Chosen("Betrunkener")
		"Müde Dame" :
			print("2")
			Dialogic.VAR.Chosen = "Müde Dame"
			remove_Chosen("Müde Dame")
		"Auszubildender" :
			print("3")
			Dialogic.VAR.Chosen = "Auszubildender"
			remove_Chosen("Auszubildender")
		"Servicekraft":
			print("4")
			Dialogic.VAR.Chosen = "Servicekraft"
			remove_Chosen("Servicekraft")
		"Putzkraft" :
			print("5")
			Dialogic.VAR.Chosen = "Putzkraft"
			remove_Chosen("Putzkraft")
	print(Dialogic.VAR.Chosen)
	second_choice = true

func remove_Chosen(choice):
	print(second_choice)
	choices.erase(choice)
	if choices.size()>= 4:
		Dialogic.VAR.DiningroomChoice1_1 = choices[0]
		Dialogic.VAR.DiningroomChoice1_2 = choices[1]
		Dialogic.VAR.DiningroomChoice1_3 = choices[2]
		Dialogic.VAR.DiningroomChoice1_4 = choices[3]
	elif choices.size() == 3:
		Dialogic.VAR.DiningroomChoice2_1 = choices[0]
		Dialogic.VAR.DiningroomChoice2_2 = choices[1]
		Dialogic.VAR.DiningroomChoice2_3 = choices[2]
	else:
		return
