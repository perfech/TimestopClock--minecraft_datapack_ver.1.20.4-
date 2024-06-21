execute as @a run scoreboard players set @s[scores={timestop_sneak=1}] timestop_sneak 3
execute as @a run scoreboard players remove @s[scores={timestop_sneak=1..}] timestop_sneak 1
execute as @a run scoreboard players set @s[scores={timestop_sneak=1}] timestop_sneak 0