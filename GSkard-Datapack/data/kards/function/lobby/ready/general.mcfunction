scoreboard players add @a Ready 0

execute as @a[advancements={kards:chengjiu/jiaocheng=true}] if score @s Ready matches 0 run item replace entity @s container.4 with minecraft:ender_pearl[item_name={translate: "lobby.ready.general.1",color:"green",bold:true},custom_data={kards:'准备'},use_cooldown={seconds:0.5f}]
execute as @a[advancements={kards:chengjiu/jiaocheng=true}] if score @s Ready matches 1 run item replace entity @s container.4 with minecraft:ender_pearl[item_name={translate: "lobby.ready.general.2",color:"red",bold:true},custom_data={kards:'取消准备'},enchantment_glint_override=true,use_cooldown={seconds:0.5f}]
execute as @a[advancements={kards:chengjiu/laodeng=true}] if score @s Ready matches 0 run item replace entity @s container.4 with minecraft:ender_pearl[item_name={translate: "lobby.ready.general.1",color:"green",bold:true},custom_data={kards:'准备'},use_cooldown={seconds:0.5f}]
execute as @a[advancements={kards:chengjiu/laodeng=true}] if score @s Ready matches 1 run item replace entity @s container.4 with minecraft:ender_pearl[item_name={translate: "lobby.ready.general.2",color:"red",bold:true},custom_data={kards:'取消准备'},enchantment_glint_override=true,use_cooldown={seconds:0.5f}]

execute as @a if score @s Used_end_pearl matches 1 run function kards:lobby/ready/1
execute as @a if score @s Used_end_pearl matches 3 run function kards:lobby/ready/2
execute as @a if score @s Used_end_pearl matches 3.. run scoreboard players set @s Used_end_pearl 0

execute if score system GameStatus matches 0 run scoreboard players enable @a Check_UnReady
execute as @a if score @s Check_UnReady matches 1 run function kards:lobby/ready/3

execute as @a store result score @s Ready_count run clear @s minecraft:ender_pearl 0
execute as @a unless score @s Ready_count matches 1 run clear @s ender_pearl
kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}}]

execute if score system GameStatus matches 0 run title @a[tag=Ready] actionbar {translate: "lobby.ready.general.3",color:"green",bold:true}
execute if score system GameStatus matches 0 run title @a[tag=Un_Ready,advancements={kards:chengjiu/jiaocheng=true}] actionbar {translate: "lobby.ready.general.4",color:"red",bold:true}
execute if score system GameStatus matches 0 run title @a[tag=Un_Ready,advancements={kards:chengjiu/laodeng=true}] actionbar {translate: "lobby.ready.general.4",color:"red",bold:true}
execute if score system GameStatus matches 0 run title @a[tag=Un_Ready,advancements={kards:chengjiu/laodeng=false}] actionbar {translate: "lobby.ready.general.4",color:"red",bold:true}

execute if score system GameStatus matches 0 run title @a[advancements={kards:chengjiu/jiaocheng=false,kards:chengjiu/laodeng=false}] actionbar {translate: "lobby.ready.general.5",color:"red",bold:true}
scoreboard players set #kard_general kardCount 0
