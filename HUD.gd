extends CanvasLayer

func _ready():
    $Panel.hide()

func _on_StartButton_pressed():
    game.start_level(game.current_level)

func show_panel_victory():
    $Panel/MessageLabel.text = "Victory"
    $Panel.show()

func show_panel_fail():
    $Panel/MessageLabel.text = "Fail"
    $Panel.show()

func _on_restart_pressed():
    game.start_level(game.current_level)
