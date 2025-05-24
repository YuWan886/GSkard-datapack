execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{translate: "game.yongpaiku.template.1",color:"gold"},{translate: "game.yongpaiku.juntuan.wuwangjiangshi.1.1",color:"dark_green",hover_event:{action:"show_text","value":"在敌方召唤1只舞王僵尸"}}]

    #红队用
    execute if entity @s[team=red] as @e[tag=7r] at @s positioned ~ 0 ~ summon zombie run function kards:game/yongpaiku/juntuan/wuwangjiangshi/2
    execute if entity @s[team=red] as @e[tag=7r] at @s positioned ~ 0 ~ run team join red @e[type=zombie,distance=..3,tag=wuwangjiangshi]
    
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=7b] at @s positioned ~ 0 ~ summon zombie run function kards:game/yongpaiku/juntuan/wuwangjiangshi/2
    execute if entity @s[team=blue] as @e[tag=7b] at @s positioned ~ 0 ~ run team join blue @e[type=zombie,distance=..3,tag=wuwangjiangshi]
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_wuwangjiangshi kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1
