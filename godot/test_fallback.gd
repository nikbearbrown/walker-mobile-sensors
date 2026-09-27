extends SceneTree

var failures := 0
func _initialize() -> void:
	call_deferred("run")
func check(ok: bool, label: String) -> void:
	print("PASS " if ok else "FAIL ", label)
	if not ok:
		failures += 1
func run() -> void:
	var demo: Node = load("res://main.tscn").instantiate()
	root.add_child(demo)
	await process_frame
	await process_frame
	var readings := {"Acc": Input.get_accelerometer(), "Grav": Input.get_gravity(), "Mag": Input.get_magnetometer(), "Gyro": Input.get_gyroscope()}
	for prefix in readings:
		print("ACTUAL_HEADLESS_READING ", prefix, " ", readings[prefix])
		for axis in 3:
			var axis_name: String = ["X", "Y", "Z"][axis]
			check(demo.get_node("%" + prefix + axis_name).text == "%.05f" % readings[prefix][axis], "raw label " + prefix + axis_name)
	for path in ["Arrows/AccelerometerArrow", "Arrows/MagnetoArrow", "Arrows/NorthArrow", "Boxes/MagAndGrav", "Boxes/GyroAndGrav"]:
		var basis: Basis = demo.get_node(path).basis
		check(basis.is_finite() and is_equal_approx(basis.determinant(), 1.0), "finite orientation " + path)
	print("HEADLESS FALLBACK ONLY; no sensor values injected, physical motion/sensor accuracy and films unverified; failures=", failures)
	demo.queue_free()
	await process_frame
	quit(1 if failures else 0)
