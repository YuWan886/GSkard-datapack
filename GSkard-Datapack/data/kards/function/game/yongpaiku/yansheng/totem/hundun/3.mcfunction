tellraw @s {translate: "game.yongpaiku.yansheng.totem.hundun.3.1",color: "dark_gray"}
execute if entity @s[team=red] at @s as @e[distance=..5,type=!player,type=!iron_golem,team=blue] run damage @s 20
execute if entity @s[team=blue] at @s as @e[distance=..5,type=!player,type=!iron_golem,team=red] run damage @s 20