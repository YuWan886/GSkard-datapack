
tellraw @a [{selector:"@s"},{translate: "kards.function.game.yongpaiku.fashu.jielue.1.1", fallback: "被劫走了！",color:"gold"}]
team join blue @s
execute if entity @s[type=!iron_golem] at @e[limit=1,tag=b_tuteng] run tp @s ~ 0 ~
execute if entity @s[type=iron_golem] at @e[limit=1,tag=blue_marker_7] run tp @s ~ 0 ~
