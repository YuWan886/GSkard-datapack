
execute if entity @s[team=red] at @r[team=blue,gamemode=adventure] run summon item ~ ~ ~ {PickupDelay:-1,Item:{id:"music_disc_11"},Tags:["copy"]}
execute if entity @s[team=red] run scoreboard players set 红队 xianjin_toulianghuanzhu 0

execute if entity @s[team=blue] at @r[team=red,gamemode=adventure] run summon item ~ ~ ~ {PickupDelay:-1,Item:{id:"music_disc_11"},Tags:["copy"]}
execute if entity @s[team=blue] run scoreboard players set 蓝队 xianjin_toulianghuanzhu 0

data modify entity @n[tag=copy,type=item] Item set from entity @s equipment.offhand
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_13"}}]
data modify entity @n[tag=copy,type=item] PickupDelay set value 1

tellraw @a [{selector: "@s"},{text: "触发了",color: "gray"},{text: "<偷梁换柱>",color: "dark_aqua",hover_event:{action:"show_text",value:"触发时复制一张同样的法术给以埋下陷阱的队伍随机玩家"}}]
execute as @a at @s run playsound minecraft:bra player @s ~ ~ ~ 100 1
