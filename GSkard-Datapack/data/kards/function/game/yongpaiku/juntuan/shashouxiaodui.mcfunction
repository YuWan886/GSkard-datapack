execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.juntuan.shashouxiaodui.1",color:"dark_green",hover_event:{action:"show_text","value":"在敌方召唤4只杀手兔"}}]

    #红队用
    execute if entity @s[team=red] as @e[tag=2r] at @s run summon rabbit ~ 0 ~ {RabbitType:99,Team:red,Age:9999999}
    execute if entity @s[team=red] as @e[tag=5r] at @s run summon rabbit ~ 0 ~ {RabbitType:99,Team:red,Age:9999999}
    execute if entity @s[team=red] as @e[tag=9r] at @s run summon rabbit ~ 0 ~ {RabbitType:99,Team:red,Age:9999999}
    execute if entity @s[team=red] as @e[tag=12r] at @s run summon rabbit ~ 0 ~ {RabbitType:99,Team:red,Age:9999999}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=2b] at @s run summon rabbit ~ 0 ~ {RabbitType:99,Team:blue,Age:9999999}
    execute if entity @s[team=blue] as @e[tag=5b] at @s run summon rabbit ~ 0 ~ {RabbitType:99,Team:blue,Age:9999999}
    execute if entity @s[team=blue] as @e[tag=9b] at @s run summon rabbit ~ 0 ~ {RabbitType:99,Team:blue,Age:9999999}
    execute if entity @s[team=blue] as @e[tag=12b] at @s run summon rabbit ~ 0 ~ {RabbitType:99,Team:blue,Age:9999999}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 5
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1