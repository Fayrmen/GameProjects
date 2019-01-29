extends CanvasLayer

func _ready():
    $Panel.hide()

func _on_StartButton_pressed():
    game.start_level(2)

func show_panel_victory():
    $Panel/MessageLabel.text = "Victory"
    $Panel.show()

func show_panel_fail():
    $Panel/MessageLabel.text = "Fail"
    $Panel.show()