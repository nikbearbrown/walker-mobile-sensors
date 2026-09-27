# Open questions log — walker-mobile-sensors

Gate — unsigned at time of writing. Written by `/gdd reverse --path godot silent`, 2026-09-27. Format: THE QUESTION / THE STAKES / DECISION DEADLINE / OPTIONS / OWNER / STATUS. Every `[MISSING]` in `GDD.md` maps to a row here. Nothing below is decided.

| # | Question | Stakes | Deadline | Options | Owner | Status |
|---|---|---|---|---|---|---|
| Q-01 | Why is this demo in Walker: what must a viewer understand afterwards? (§1) | No acceptance criterion for films or tests | before either film is scripted | sensor API reference / orientation-math lesson / archive only | Nik Bear Brown | Open |
| Q-02 | Audience: developer, student, general viewer? (§1) | Decides whether films explain cross products or just show arrows moving | with Q-01 | developer / student / general | Nik Bear Brown | Open |
| Q-03 | PX goals and how to measure them (§4) | Every candidate needs a physical device | before T-22 | adopt §4 candidates / rewrite / "demo, no PX goals" | Nik Bear Brown | Open |
| Q-04 | Which features are CORE for Walker? (§11) | No prioritization; CORE % undefined | with Q-01 | tag F-01..F-06 | Nik Bear Brown | Open |
| Q-05 | Upstream README says "Renderer: Mobile"; project settings select Compatibility. Leave as-is, correct the README note, or change the renderer? (§13, R-05) | Films or docs state the wrong renderer | before either film is scripted | leave and note / correct README locally / switch renderer (behavior change) | Nik Bear Brown | Open |
| Q-06 | Who runs a physical phone/tablet session, on which device with which sensors? (§11, §16 T-22) | Every feature stays at fallback-only L2; films blocked | before film capture | named device + OS; or declare hardware out of scope | Nik Bear Brown | Open |
| Q-07 | Is any desktop footage acceptable, given it shows placeholder vectors, not sensor data? (§14 R-02) | A capture that looks like success and proves nothing | before capture | device footage only / desktop footage labelled "fallback" / no films | Nik Bear Brown | Open |
| Q-08 | Test or harden the drift-correction edge (upside-down or float overshoot)? (§5 M-06, R-03) | Possible NaN basis on a real device | before T-21 | test first with labelled synthetic input / clamp locally / leave upstream | Nik Bear Brown | Open |
| Q-09 | The code comments are unsure whether a cross product gives east or west. Resolve before narration? (§5 M-04, R-04) | A film states the wrong direction | before either film is scripted | work it out and note it in the GDD / avoid the claim in narration | Nik Bear Brown | Open |
