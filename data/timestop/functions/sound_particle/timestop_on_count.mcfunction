execute as @a[scores={timestop_presstime_sneak=20}] positioned as @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 2
execute as @a[scores={timestop_presstime_sneak=40}] positioned as @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 2
execute as @a[scores={timestop_presstime_sneak=60}] positioned as @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 2

execute as @a[scores={timestop_presstime_sneak=20}] positioned as @s run title @s actionbar "世界が止まるまで 3秒..."
execute as @a[scores={timestop_presstime_sneak=40}] positioned as @s run title @s actionbar "世界が止まるまで 2秒..."
execute as @a[scores={timestop_presstime_sneak=60}] positioned as @s run title @s actionbar "世界が止まるまで 1秒..."

execute as @a[scores={timestop_presstime_sneak=80..}] positioned as @s run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 0.5
execute as @a[scores={timestop_presstime_sneak=80..}] positioned as @s run playsound minecraft:block.respawn_anchor.deplete player @s

execute as @a[scores={timestop_presstime_sneak=80..}] positioned as @s run particle minecraft:cherry_leaves ~ ~1 ~ 1 1 1 0.1 50 normal @s
execute as @a[scores={timestop_presstime_sneak=80..}] positioned as @s run particle minecraft:cloud ~ ~1 ~ 3 3 3 0.5 50 normal @s

execute as @a[scores={timestop_presstime_sneak=80..}] positioned as @s run title @s actionbar "あなたによって世界の動作が停止しました"