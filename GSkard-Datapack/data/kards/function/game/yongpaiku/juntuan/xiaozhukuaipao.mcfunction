execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.paiku.fashu.wuyongfa.1",color:"gold"},{translate: "game.yongpaiku.juntuan.xiaozhukuaipao.1",color:"dark_green",hover_event:{action:"show_text","value":"在敌方召唤三只疣猪兽"}}]
    #红队用
    execute if entity @s[team=red] as @e[tag=2r] at @s run summon hoglin ~ 0 ~ {Team:red,IsImmuneToZombification:true,Age:0,attributes:[{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}
    execute if entity @s[team=red] as @e[tag=11r] at @s run summon hoglin ~ 0 ~ {Team:red,IsImmuneToZombification:true,Age:0,attributes:[{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}
    execute if entity @s[team=red] as @e[tag=13r] at @s run summon hoglin ~ 0 ~ {Team:red,IsImmuneToZombification:true,Age:0,attributes:[{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=2b] at @s run summon hoglin ~ 0 ~ {Team:blue,IsImmuneToZombification:true,Age:0,attributes:[{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}
    execute if entity @s[team=blue] as @e[tag=11b] at @s run summon hoglin ~ 0 ~ {Team:blue,IsImmuneToZombification:true,Age:0,attributes:[{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}
    execute if entity @s[team=blue] as @e[tag=13b] at @s run summon hoglin ~ 0 ~ {Team:blue,IsImmuneToZombification:true,Age:0,attributes:[{id:"minecraft:max_health",base:30.0d}],Health:30.0f,CannotBeHunted:1b}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 7
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1