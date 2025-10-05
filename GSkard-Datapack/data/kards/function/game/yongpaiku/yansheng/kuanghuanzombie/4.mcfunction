scoreboard players reset @s Mob_Skill_Time
tag @s add Skill_Temp
execute as @s[team=blue] facing entity @p[team=red,gamemode=adventure] feet anchored eyes positioned ^ ^1.5 ^0.25 summon ender_pearl run function kards:game/yongpaiku/yansheng/kuanghuanzombie/5
execute as @s[team=red] facing entity @p[team=blue,gamemode=adventure] feet anchored eyes positioned ^ ^1.5 ^0.25 summon ender_pearl run function kards:game/yongpaiku/yansheng/kuanghuanzombie/5

tag @s remove Skill_Temp