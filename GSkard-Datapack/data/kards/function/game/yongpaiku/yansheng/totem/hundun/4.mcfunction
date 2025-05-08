tellraw @s {translate: "game.yongpaiku.yansheng.totem.hundun.4.1",color: "dark_gray"}
execute if entity @s[team=red] at @s[distance=..5] run team join red @e[distance=..5,type=!player,tag=!tuteng,type=!armor_stand]
execute if entity @s[team=blue] at @s[distance=..5] run team join blue @e[distance=..5,type=!player,tag=!tuteng,type=!armor_stand]
execute if entity @s[team=red] at @s[distance=..5] as @e[tag=7r,limit=1] at @s run tp @e[type=!player,tag=!tuteng,type=!armor_stand] ~ -60 ~
execute if entity @s[team=blue] at @s[distance=..5] as @e[tag=7b,limit=1] at @s run tp @e[type=!player,tag=!tuteng,type=!armor_stand] ~ -60 ~