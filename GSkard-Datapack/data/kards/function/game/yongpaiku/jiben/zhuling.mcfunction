execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[猪灵]",color:"blue"}]

    #红队用
   execute if entity @s[team=red] as @e[tag=7r] at @s run summon minecraft:piglin ~ 0 ~ {Team:red,IsBaby:false,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"},head:{id:"minecraft:golden_helmet"},chest:{id: "minecraft:golden_chestplate"},legs:{id: "minecraft:golden_leggings"},feet:{id: "minecraft:golden_boots"}},attributes:[{id:"follow_range",base:100}]}
    #蓝队用
   execute if entity @s[team=blue] as @e[tag=7b] at @s run summon minecraft:piglin ~ 0 ~ {Team:blue,IsBaby:false,IsImmuneToZombification:true,equipment:{mainhand:{id:"minecraft:golden_sword"},head:{id:"minecraft:golden_helmet"},chest:{id: "minecraft:golden_chestplate"},legs:{id: "minecraft:golden_leggings"},feet:{id: "minecraft:golden_boots"}},attributes:[{id:"follow_range",base:100}]}
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zhuling kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1

