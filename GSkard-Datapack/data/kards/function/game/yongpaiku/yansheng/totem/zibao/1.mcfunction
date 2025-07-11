tag @s add zibaotuteng
summon item ~ ~ ~ {PickupDelay:-1,Item:{id:"music_disc_11"},Tags:["copy"]}
data modify entity @n[tag=copy,type=item] Owner set from entity @n[tag=User] UUID
data modify entity @n[tag=copy,type=item] Item set from entity @s equipment.head
data modify entity @n[tag=copy,type=item] PickupDelay set value 1
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_11"}},tag=copy]
item replace entity @s armor.head with tnt[enchantments={binding_curse:1},tooltip_display={hide_tooltip:true}]
playsound minecraft:alert player @a[distance=..20] ~ ~ ~ 100 1.1
scoreboard players set @s zibaotuteng_zibao 100
advancement revoke @s only kards:totem/zibao
