advancement revoke @s only kards:shenqi/kunanyaolan
execute if score @s kunanyaolan_damage matches 1.. run return fail
scoreboard players add @s healback_kunanyaolan 1
scoreboard players add @s[scores={healback_kunanyaolan=2..}] HealBack 1
scoreboard players remove @s[scores={healback_kunanyaolan=2..}] healback_kunanyaolan 2