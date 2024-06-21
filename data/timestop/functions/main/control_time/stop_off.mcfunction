execute as @e[tag=timestop_YesAI,nbt={NoAI:1b}] run data remove entity @s NoAI
execute as @e[tag=timestop_YesAI,nbt=!{NoAI:1b}] run tag @s remove timestop_YesAI

#execute as @e[tag=timestop_YesGravity,nbt={NoGravity:1b}] run data remove entity @s NoGravity
#execute as @e[tag=timestop_YesGravity,nbt=!{NoGravity:1b}] run tag @s remove timestop_YesGravity

execute as @e[tag=timestop_NoSilent,nbt={Silent:1b}] run data remove entity @s Silent
execute as @e[tag=timestop_NoSilent,nbt=!{Silent:1b}] run tag @s remove timestop_NoSilent

execute if data storage timestop {dodaylightcycle:[{result:1b}]} run gamerule doDaylightCycle true
data merge storage timestop {dodaylightcycle:[{result:-1b}]}

execute if data storage timestop {doweathercycle:[{result:1b}]} run gamerule doWeatherCycle true
data merge storage timestop {doweathercycle:[{result:-1b}]}

execute as @e[scores={timestop_Age=0..}] run scoreboard players reset @s timestop_Age

data merge storage timestop {timestop:0b}
scoreboard players set @s timestop_presstime_sneak 0
