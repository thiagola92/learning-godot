extends Node

func _init() -> void:
	prints(self, "_init() callback")
	
	connect("tree_entered", on_tree_entered)
	connect("ready", on_ready)
	connect("tree_exiting", on_tree_exiting)
	connect("tree_exited", on_tree_exited)

func _enter_tree() -> void:
	prints(name, "_enter_tree() callback")

func _ready() -> void:
	prints(name, "_ready() callback")
	
	if get_parent() == get_tree().root:
		queue_free()

func _exit_tree() -> void:
	prints(name, "_exit_tree() callback")

func _notification(what: int) -> void:
	match what:
		NOTIFICATION_ENTER_TREE:
			prints(name, "NOTIFICATION_ENTER_TREE")
		NOTIFICATION_EXIT_TREE:
			prints(name, "NOTIFICATION_EXIT_TREE")
		NOTIFICATION_READY:
			prints(name, "NOTIFICATION_READY")
		NOTIFICATION_PREDELETE:
			prints(name, "NOTIFICATION_PREDELETE")
		NOTIFICATION_POSTINITIALIZE:
			prints(name, "NOTIFICATION_POSTINITIALIZE")
		NOTIFICATION_POST_ENTER_TREE:
			prints(name, "NOTIFICATION_POST_ENTER_TREE")

func on_tree_entered():
	prints(name, "tree_entered signal")

func on_ready():
	prints(name, "ready signal")

func on_tree_exiting():
	prints(name, "tree_exiting signal")

func on_tree_exited():
	prints(name, "tree_exited signal")
