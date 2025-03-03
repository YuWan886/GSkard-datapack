execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text:"使用了",color:"gold"},{text:"[僵尸]",color:"blue"}]

    #红队用
   execute if entity @s[team=red] as @e[tag=7r] at @s run summon zombie ~ 0 ~ {Team:red,IsBaby:false,ArmorItems:[{},{},{},{Count: 1b,id: "minecraft:dispenser",tag: {Damage: 1}}]}
    #蓝队用
   execute if entity @s[team=blue] as @e[tag=7b] at @s run summon zombie ~ 0 ~ {Team:blue,IsBaby:false,ArmorItems:[{},{},{},{Count: 1b,id: "minecraft:dispenser",tag: {Damage: 1}}]}
function kards:game/yongpaiku/xianjin/jiance/mobjiance
scoreboard players add @s jiben 1
item replace entity @s weapon.offhand with air
scoreboard players remove @s kardCount 1
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1


