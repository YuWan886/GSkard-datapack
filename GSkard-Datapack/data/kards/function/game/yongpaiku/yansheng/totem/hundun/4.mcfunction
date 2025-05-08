tellraw @s {"text": "混沌图腾炸开了！把周围敌对生物传送到敌方场地","color": "dark_gray"}
execute if entity @s[team=red] at @s[distance=..5] run team join red @e[distance=..5,type=!player,tag=!tuteng,type=!armor_stand]
execute if entity @s[team=blue] at @s[distance=..5] run team join blue @e[distance=..5,type=!player,tag=!tuteng,type=!armor_stand]
execute if entity @s[team=red] at @s[distance=..5] as @e[tag=7r,limit=1] at @s run tp @e[type=!player,tag=!tuteng,type=!armor_stand] ~ -60 ~
execute if entity @s[team=blue] at @s[distance=..5] as @e[tag=7b,limit=1] at @s run tp @e[type=!player,tag=!tuteng,type=!armor_stand] ~ -60 ~