data merge storage timestop {timestop:1b}

execute as @e[nbt=!{NoAI:1b}] run tag @s add timestop_YesAI
execute as @e[tag=timestop_YesAI] run data merge entity @s {NoAI:1b}

#execute as @e[nbt=!{NoGravity:1b}] run tag @s add timestop_YesGravity
#execute as @e[tag=timestop_YesGravity] run data merge entity @s {NoGravity:1b}

execute as @e[nbt=!{Silent:1b}] run tag @s add timestop_NoSilent
execute as @e[tag=timestop_NoSilent] run data merge entity @s {Silent:1b}

execute as @e unless score @s timestop_Age matches 0.. store result score @s timestop_Age run data get entity @s Age
execute as @e[scores={timestop_Age=0..}] store result entity @s Age short 1 run scoreboard players get @s timestop_Age

execute if data storage timestop {dodaylightcycle:[{result:-1b}]} store result storage timestop dodaycycle byte 1 run gamerule doDaylightCycle
gamerule doDaylightCycle false

execute if data storage timestop {doweathercycle:[{result:-1b}]} store result storage timestop doweathercycle byte 1 run gamerule doWeatherCycle
gamerule doWeatherCycle false