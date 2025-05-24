tellraw @s {text: "混沌图腾炸开了！对周围敌对生物造成造成10♥伤害",color: "dark_gray"}
execute if entity @s[team=red] at @s as @e[distance=..5,type=!player,type=!iron_golem,team=blue] run damage @s 20
execute if entity @s[team=blue] at @s as @e[distance=..5,type=!player,type=!iron_golem,team=red] run damage @s 20