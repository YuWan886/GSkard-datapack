execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.juntuan.mengduzhuaya.1",color:"dark_green",hover_event:{action:"show_text","value":"在敌方召唤四只剧毒蜘蛛"}}]
    #红队用
    execute if entity @s[team=red] as @e[tag=1r] at @s run summon cave_spider ~ 0 ~ {Team:red}
    execute if entity @s[team=red] as @e[tag=3r] at @s run summon cave_spider ~ 0 ~ {Team:red}
    execute if entity @s[team=red] as @e[tag=11r] at @s run summon cave_spider ~ 0 ~ {Team:red}
    execute if entity @s[team=red] as @e[tag=13r] at @s run summon cave_spider ~ 0 ~ {Team:red}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=1b] at @s run summon cave_spider ~ 0 ~ {Team:blue}
    execute if entity @s[team=blue] as @e[tag=3b] at @s run summon cave_spider ~ 0 ~ {Team:blue}
    execute if entity @s[team=blue] as @e[tag=11b] at @s run summon cave_spider ~ 0 ~ {Team:blue}
    execute if entity @s[team=blue] as @e[tag=13b] at @s run summon cave_spider ~ 0 ~ {Team:blue}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 7
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1