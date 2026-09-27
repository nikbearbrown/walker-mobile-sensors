# Walker — Mobile Sensors

**What this is.** A Walker copy of Godot's mobile sensors demo: a 3D scene showing raw accelerometer, gravity, magnetometer and gyroscope readings, three arrows (gravity, magnetometer, computed north), and two boxes oriented two different ways (magnetometer + gravity, and gyroscope + gravity drift correction). It is a sensor-visualization tech demo, not a game. The sensors are typically found on mobile devices, so don't expect it to work on a desktop.

**Why it is in Walker.** Walker keeps independent copies of Godot demos as reference evidence for how the engine behaves; this one covers how Godot exposes device sensors and one way to turn them into an orientation. Its specific purpose in Walker has not been written down yet (open question Q-01 in `design/decisions.md`).

**What was found and verified.** Headless import/runtime and 17 missing-sensor fallback assertions pass. Physical sensor behavior, rendered output and both native-4K Liam films remain pending. Desktop zero readings are not proof that mobile sensors work.

## How to run

Open `godot/project.godot` in Godot 4.7 (verified headless with 4.7.2) and run `main.tscn`, ideally exported to a phone or tablet with the sensors. There are no input actions: move, tilt and turn the device. On a desktop every reading is zero and the arrows and boxes use built-in placeholder vectors.

| On screen | Meaning |
|---|---|
| Table | raw X/Y/Z readings for accelerometer, gravity, magnetometer, gyroscope |
| Green arrow | gravity (from the accelerometer if gravity is unavailable) |
| Blue arrow | magnetometer |
| Yellow arrow | computed north, kept horizontal |
| Left box | oriented by magnetometer + gravity |
| Right box | oriented by gyroscope, corrected for drift by gravity |

## Design

- [GDD.md](GDD.md): recovered Game Design Document (identical copy of `design/GDD.md`)
- [design/DECK.html](design/DECK.html): review slides
- [design/IMPLEMENTATION-MAP.md](design/IMPLEMENTATION-MAP.md): feature → scene/script/line map
- [design/decisions.md](design/decisions.md): open questions

The GDD was recovered from the code by Walker's Zelda `/gdd reverse` pass in silent mode. It describes what exists and tags every claim as observed, inferred or missing; it is not an approved design, and no design gate is signed.

## Source & license

Independent title-only copy of Godot `mobile/sensors`, source commit `a3b5c113112f77291d5f3d1360f33a882fdc52f7`. Original source, assets, UIDs and README preserved; upstream MIT license retained in LICENSE.md.

## Status

- Headless import and 120-frame runtime: exit 0, no observed errors (`import-20260926.log`, `runtime-20260926.log`).
- `fallback-20260926.log`: the actual headless readings for all four sensors are zero; 17 checks pass (twelve raw labels match those readings, and five arrow/box orientations are finite with determinant one under the scene's built-in missing-sensor fallbacks). No readings were injected or recorded as physical motion.
- The fallback vectors are placeholders, not measured north or gravity. This tests only missing-sensor startup behavior, not accuracy, orientation under movement, magnetic interference, gyro drift or physical device support.
- The upstream README says Mobile renderer, but the project settings select Compatibility; no renderer change was made.
- Pending: physical sensor behavior, rendered output, both native-4K Liam films, and human review.

Repository: https://github.com/nikbearbrown/walker-mobile-sensors
