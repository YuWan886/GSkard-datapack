execute if score @s pingbi matches 0 run tellraw @a [{selector:"@s"},{text: "使用了",color:"gold"},{text: "[三人成众]",color:"dark_green",hover_event:{action:"show_text",value:"召唤三只大的岩浆史莱姆，每10秒生成一只小史莱姆"}}]

# 红队召唤逻辑
execute if entity @s[team=red] as @e[tag=1r] at @s run summon slime ~ ~ ~ {Team:red,Size:1,Tags:["large_slime"]}
execute if entity @s[team=red] as @e[tag=3r] at @s run summon slime ~ ~ ~ {Team:red,Size:1,Tags:["large_slime"]}
execute if entity @s[team=red] as @e[tag=11r] at @s run summon slime ~ ~ ~ {Team:red,Size:1,Tags:["large_slime"]}

# 蓝队召唤逻辑
execute if entity @s[team=blue] as @e[tag=1b] at @s run summon slime ~ ~ ~ {Team:blue,Size:1,Tags:["large_slime"]}
execute if entity @s[team=blue] as @e[tag=3b] at @s run summon slime ~ ~ ~ {Team:blue,Size:1,Tags:["large_slime"]}
execute if entity @s[team=blue] as @e[tag=11b] at @s run summon slime ~ ~ ~ {Team:blue,Size:1,Tags:["large_slime"]}


function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_sanrenchengzhong kardCount
scoreboard players remove @s[scores={kujie=1..}] kardCount 1
scoreboard players set @s pingbi 0
scoreboard players add @s use_kard 1