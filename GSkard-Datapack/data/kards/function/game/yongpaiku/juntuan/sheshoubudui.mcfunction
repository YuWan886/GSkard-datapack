execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.juntuan.sheshoubudui.1",color:"dark_green",hover_event:{action:"show_text","value":"在敌方召唤2只骷髅2只沼骸2只流浪者"}}]
    #红队用
    execute if entity @s[team=red] as @e[tag=1r] at @s run summon minecraft:bogged ~ 0 ~ {Team:red,HandItems:[{id:"minecraft:bow"},{}]}
    execute if entity @s[team=red] as @e[tag=5r] at @s run summon minecraft:skeleton ~ 0 ~ {Team:red,HandItems:[{id:"minecraft:bow"},{}]}
    execute if entity @s[team=red] as @e[tag=11r] at @s run summon minecraft:stray ~ 0 ~ {Team:red,HandItems:[{id:"minecraft:bow"},{}]}
    execute if entity @s[team=red] as @e[tag=3r] at @s run summon minecraft:stray ~ 0 ~ {Team:red,HandItems:[{id:"minecraft:bow"},{}]}
    execute if entity @s[team=red] as @e[tag=9r] at @s run summon minecraft:skeleton ~ 0 ~ {Team:red,HandItems:[{id:"minecraft:bow"},{}]}
    execute if entity @s[team=red] as @e[tag=13r] at @s run summon minecraft:bogged ~ 0 ~ {Team:red,HandItems:[{id:"minecraft:bow"},{}]}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=1b] at @s run summon minecraft:bogged ~ 0 ~ {Team:blue,HandItems:[{id:"minecraft:bow"},{}]}
    execute if entity @s[team=blue] as @e[tag=5b] at @s run summon minecraft:skeleton ~ 0 ~ {Team:blue,HandItems:[{id:"minecraft:bow"},{}]}
    execute if entity @s[team=blue] as @e[tag=11b] at @s run summon minecraft:stray ~ 0 ~ {Team:blue,HandItems:[{id:"minecraft:bow"},{}]}
    execute if entity @s[team=blue] as @e[tag=3b] at @s run summon minecraft:stray ~ 0 ~ {Team:blue,HandItems:[{id:"minecraft:bow"},{}]}
    execute if entity @s[team=blue] as @e[tag=9b] at @s run summon minecraft:skeleton ~ 0 ~ {Team:blue,HandItems:[{id:"minecraft:bow"},{}]}
    execute if entity @s[team=blue] as @e[tag=13b] at @s run summon minecraft:bogged ~ 0 ~ {Team:blue,HandItems:[{id:"minecraft:bow"},{}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 8
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1