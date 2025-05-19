execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.juntuan.zaieshuangxing.1",color:"dark_green",hover_event:{action:"show_text","value":"在敌方召唤一只幻术师与唤魔者"}}]
   #红队用
    execute if entity @s[team=red] as @e[tag=6r] at @s run summon minecraft:illusioner ~ 0 ~ {Team:red,attributes:[{id:"minecraft:max_health",base:30.0d}],Health:30.0f,HandItems:[{id:"minecraft:bow"},{}],}
    execute if entity @s[team=red] as @e[tag=8r] at @s run summon minecraft:evoker ~ 0 ~ {Team:red,attributes:[{id:"minecraft:max_health",base:30.0d}],Health:30.0f}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=6b] at @s run summon minecraft:illusioner ~ 0 ~ {Team:blue,attributes:[{id:"minecraft:max_health",base:30.0d}],Health:30.0f,HandItems:[{id:"minecraft:bow"},{}],}
    execute if entity @s[team=blue] as @e[tag=8b] at @s run summon minecraft:evoker ~ 0 ~ {Team:blue,attributes:[{id:"minecraft:max_health",base:30.0d}],Health:30.0f}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zaieshuangxing kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
