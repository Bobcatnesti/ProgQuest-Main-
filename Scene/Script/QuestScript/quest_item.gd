class_name QuestItem extends Button

@onready var title_label: Label = $TitleLabel
@onready var step_label: Label = $StepLabel

var quest : Quest

func initialize(q_data : Quest, q_state) -> void: 
	quest = q_data
	title_label.text = q_data.title
	
	if q_state.is_complete:
		step_label.text = "Completed"
		step_label.modulate = Color.GREEN
	else:
		var step_count : int = q_data.steps.size()
		var completed_count : int = q_state.completed_steps.size()
		step_label.text ="Quest Step:" + str(completed_count) + "/" + str(step_count)
	pass
