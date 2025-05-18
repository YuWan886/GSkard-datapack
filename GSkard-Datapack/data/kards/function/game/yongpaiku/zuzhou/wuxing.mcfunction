execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.zuzhou.wuxing.1",color:"dark_gray",hover_event:{action:"show_text","value":"敌方区域怪物隐身5s"}}]

    #蓝
    execute if entity @s[team=blue] run effect give @e[type=!player,type=!iron_golem,team=blue] invisibility 5 1 true
    #红
    execute if entity @s[team=red] run effect give @e[type=!player,type=!iron_golem,team=red] invisibility 5 1 true
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 5
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1