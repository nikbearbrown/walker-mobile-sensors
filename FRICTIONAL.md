# Verification and friction — 2026-09-26 20:36 UTC heartbeat

Read complete README, project, script and scene. No source mobile AGENTS.md
found. Destination absent and no active Godot/render worker before independent
copy. Title-only adaptation plus diagnostic harness; original source untouched.
MIT license, assets and UIDs retained. README says Mobile renderer, but actual
project settings select Compatibility; no renderer changes made.

Godot 4.7.2 headless import and 120-frame runtime exit 0 without observed errors.
fallback-20260926.log reports actual headless accelerometer, gravity,
magnetometer and gyroscope readings all zero. Seventeen assertions pass:
twelve raw labels match those readings, and five arrow/box bases are finite
with determinant one after the scene's built-in missing-sensor fallbacks.
No readings were injected or recorded as physical motion.

This tests only missing-sensor startup behavior, not accuracy, orientation
under movement, magnetic interference, gyro drift or physical device support.
The source's fallback vectors are placeholders, not measured north/gravity.
Actual mobile hardware and visual capture remain unavailable/unverified under
the existing capture constraint. No visible window reopened, device installed,
film fabricated or human approval signed. Both films remain pending; proceed
next feasible item without retiring the pair.
