scoreboard objectives add timestop_Age dummy
scoreboard objectives add timestop_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add timestop_presstime_sneak dummy

data merge storage timestop {dodaylightcycle:[{result:-1b}]}

tellraw @a [{"text":"(TIMESTOP) "},{"text":"datapack has reloaded. "}]