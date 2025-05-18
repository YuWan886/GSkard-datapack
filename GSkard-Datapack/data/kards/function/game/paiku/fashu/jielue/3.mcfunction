tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.jielue.2.1",color:"gold"}]
team join blue @s
execute if entity @s[type=!iron_golem] at @e[limit=1,tag=b_tuteng] run tp @s ~ 0 ~
execute if entity @s[type=iron_golem] at @e[limit=1,tag=7r] run tp @s ~ 0 ~
