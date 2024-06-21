execute as @a[scores={timestop_presstime_sneak=20}] positioned as @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.5
execute as @a[scores={timestop_presstime_sneak=40}] positioned as @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.5
execute as @a[scores={timestop_presstime_sneak=60}] positioned as @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.5

execute as @a[scores={timestop_presstime_sneak=20}] positioned as @s run title @s actionbar "世界が動き出すまで 3秒..."
execute as @a[scores={timestop_presstime_sneak=40}] positioned as @s run title @s actionbar "世界が動き出すまで 2秒..."
execute as @a[scores={timestop_presstime_sneak=60}] positioned as @s run title @s actionbar "世界が動き出すまで 1秒..."

execute as @a[scores={timestop_presstime_sneak=80..}] positioned as @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 0.5
execute as @a[scores={timestop_presstime_sneak=80..}] positioned as @s run playsound minecraft:block.respawn_anchor.set_spawn player @s

execute as @a[scores={timestop_presstime_sneak=80..}] positioned as @s run particle minecraft:glow ~ ~1 ~ 1 1 1 0.1 25 normal @s
execute as @a[scores={timestop_presstime_sneak=80..}] positioned as @s run particle minecraft:cloud ~ ~1 ~ 3 3 3 0.5 50 normal @s

execute as @a[scores={timestop_presstime_sneak=80..}] positioned as @s run title @s actionbar "あなたによって世界が動きを取り戻しました"