#弃用
#execute as @a[team=!red] if score @s join_red matches 1 run function kards:lobby/team/join/red
#execute as @a[team=!blue] if score @s join_blue matches 1 run function kards:lobby/team/join/blue
#execute as @a[tag=Ready] if score @s join_red matches 1.. run scoreboard players set @s join_red 0
#execute as @a[tag=Ready] if score @s join_blue matches 1.. run scoreboard players set @s join_blue 0
#execute as @a[tag=Ready] if score #system wait_start matches -1 run item replace entity @s container.3 with minecraft:red_banner[minecraft:item_name=[{translate: "lobby.team.general.1",color:"red",bold:true},{translate: "lobby.team.general.2",color:"gray",bold:false}]]
#execute as @a[tag=Ready] if score #system wait_start matches -1 run item replace entity @s container.5 with minecraft:blue_banner[minecraft:item_name=[{translate: "lobby.team.general.3",color:"blue",bold:true},{translate: "lobby.team.general.2",color:"gray",bold:false}]]
#execute as @a store result score @s banner_count run clear @s #minecraft:banners 0
#execute as @a unless score @s banner_count matches 2 run clear @s #minecraft:banners
#kill @e[type=item,nbt={Item:{id:"minecraft:red_banner"}}]
#kill @e[type=item,nbt={Item:{id:"minecraft:blue_banner"}}]

#踩区域选队
execute positioned 85.0 222 -31.0 as @a[dx=5,dz=4,tag=Un_Ready] run function kards:lobby/team/join/unready
execute positioned 85.0 222 -24.0 as @a[dx=5,dz=4,tag=Un_Ready] run function kards:lobby/team/join/unready

execute positioned 85.0 222 -31.0 as @a[dx=5,dz=4,tag=Ready] run function kards:lobby/team/join/red
execute positioned 85.0 222 -24.0 as @a[dx=5,dz=4,tag=Ready] run function kards:lobby/team/join/blue