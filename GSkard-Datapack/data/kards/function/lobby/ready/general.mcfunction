item replace entity @a[tag=Un_Ready] container.4 with minecraft:blaze_rod[consumable={sound:{sound_id:"minecraft:block.beacon.activate"},consume_seconds:0,animation:"brush",has_consume_particles:false},custom_name={italic:false,translate: "kards.function.lobby.ready.general.1", fallback: "准备",color:"green",bold:true},custom_data={kards:'准备',lobby:'blaze'},use_cooldown={seconds:0.5f},item_model="ender_pearl"]
item replace entity @a[tag=Ready] container.4 with minecraft:blaze_rod[consumable={sound:{sound_id:"minecraft:block.beacon.deactivate"},consume_seconds:0,animation:"brush",has_consume_particles:false},custom_name={italic:false,translate: "kards.function.lobby.ready.general.2", fallback: "取消准备",color:"red",bold:true},custom_data={kards:'取消准备',lobby:'blaze'},enchantment_glint_override=true,use_cooldown={seconds:0.5f},item_model="ender_eye"]

execute if score #system GameStatus matches 0 run scoreboard players enable @a Check_UnReady
execute as @a if score @s Check_UnReady matches 1 run function kards:lobby/ready/3

execute as @a store result score @s Ready_count run clear @s minecraft:blaze_rod[custom_data~{lobby:'blaze'}] 0
execute as @a unless score @s Ready_count matches 1 run clear @s blaze_rod[custom_data~{lobby:'blaze'}]
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",components:{"minecraft:custom_data":{lobby:'blaze'}}}}]

execute if score #system GameStatus matches 0 run title @a[tag=Ready] actionbar {translate: "kards.function.lobby.ready.general.3", fallback: "您将参与游戏",color:"green",bold:true}
execute if score #system GameStatus matches 0 run title @a[tag=Un_Ready] actionbar {translate: "kards.function.lobby.ready.general.4", fallback: "您将观战游戏",color:"red",bold:true}
