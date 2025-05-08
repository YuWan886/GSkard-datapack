execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":"使用了","color":"gold"},{"text":"[行尸走肉]","color":"dark_green","hoverEvent":{"action":"show_text","value":"在敌方召唤五只僵尸(四大一小)"}}]
   #红队用
    execute if entity @s[team=red] as @e[tag=7r] at @s run summon zombie ~ 0 ~ {Team:red,IsBaby:true,ArmorItems:[{},{},{},{id: "minecraft:dispenser"}]}
    execute if entity @s[team=red] as @e[tag=1r] at @s run summon zombie ~ 0 ~ {Team:red,IsBaby:false,ArmorItems:[{},{},{},{id: "minecraft:dispenser"}]}
    execute if entity @s[team=red] as @e[tag=3r] at @s run summon zombie ~ 0 ~ {Team:red,IsBaby:false,ArmorItems:[{},{},{},{id: "minecraft:dispenser"}]}
    execute if entity @s[team=red] as @e[tag=11r] at @s run summon zombie ~ 0 ~ {Team:red,IsBaby:false,ArmorItems:[{},{},{},{id: "minecraft:dispenser"}]}
    execute if entity @s[team=red] as @e[tag=13r] at @s run summon zombie ~ 0 ~ {Team:red,IsBaby:false,ArmorItems:[{},{},{},{id: "minecraft:dispenser"}]}
    #蓝队用
    execute if entity @s[team=blue] as @e[tag=7b] at @s run summon zombie ~ 0 ~ {Team:blue,IsBaby:true,ArmorItems:[{},{},{},{id: "minecraft:dispenser"}]}
    execute if entity @s[team=blue] as @e[tag=1b] at @s run summon zombie ~ 0 ~ {Team:blue,IsBaby:false,ArmorItems:[{},{},{},{id: "minecraft:dispenser"}]}
    execute if entity @s[team=blue] as @e[tag=3b] at @s run summon zombie ~ 0 ~ {Team:blue,IsBaby:false,ArmorItems:[{},{},{},{id: "minecraft:dispenser"}]}
    execute if entity @s[team=blue] as @e[tag=11b] at @s run summon zombie ~ 0 ~ {Team:blue,IsBaby:false,ArmorItems:[{},{},{},{id: "minecraft:dispenser"}]}
    execute if entity @s[team=blue] as @e[tag=13b] at @s run summon zombie ~ 0 ~ {Team:blue,IsBaby:false,ArmorItems:[{},{},{},{id: "minecraft:dispenser"}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 5
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1