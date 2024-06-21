execute as @a[scores={timestop_sneak=0}] run scoreboard players set @s timestop_presstime_sneak 0
execute as @a[scores={timestop_sneak=1..}] run scoreboard players add @s timestop_presstime_sneak 1

#sound/timestop_off_count
execute unless data storage timestop {timestop:0b} run function timestop:sound_particle/timestop_off_count
#control_time/stop_off
execute unless data storage timestop {timestop:0b} as @a[scores={timestop_presstime_sneak=80..}] run function timestop:main/control_time/stop_off

#sound/timestop_on_count
execute if data storage timestop {timestop:0b} run function timestop:sound_particle/timestop_on_count
#control_time/stop_on
execute if data storage timestop {timestop:0b} as @a[scores={timestop_presstime_sneak=80..}] run data merge storage timestop {timestop:1b}
execute as @a[scores={timestop_presstime_sneak=80..}] run scoreboard players set @s timestop_presstime_sneak 0