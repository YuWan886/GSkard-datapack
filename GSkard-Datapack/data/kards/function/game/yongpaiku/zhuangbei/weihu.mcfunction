execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[维护]",color:"gold",hover_event:{action:"show_text","value":"为你主手武器增加十点击杀数"}}]
scoreboard players add @s killed_entity 10

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_weihu kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1