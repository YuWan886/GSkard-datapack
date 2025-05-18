tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.jielue.2.1",color:"gold"}]
team join red @s
execute if entity @s[type=!iron_golem] at @e[limit=1,tag=r_tuteng] run tp @s ~ 0 ~
execute if entity @s[type=iron_golem] at @e[limit=1,tag=7b] run tp @s ~ 0 ~
