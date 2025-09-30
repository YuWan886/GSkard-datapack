
tellraw @a [{selector:"@s"},{translate: "kards.function.game.yongpaiku.fashu.jielue.2.1", fallback: "被劫走了！",color:"gold"}]
team join red @s
execute if entity @s[type=!iron_golem] at @e[limit=1,tag=r_tuteng] run tp @s ~ 0 ~
execute if entity @s[type=iron_golem] at @e[limit=1,tag=red_marker_7] run tp @s ~ 0 ~
