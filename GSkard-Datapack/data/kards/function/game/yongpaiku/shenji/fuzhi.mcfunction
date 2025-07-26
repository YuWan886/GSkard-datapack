

function kards:game/yongpaiku/xianjing/jiance/shenjijiance
function kards:game/yongpaiku/use_general/kard_general
item replace entity @s weapon.offhand with air
summon item ~ ~ ~ {Item:{id:"music_disc_11"},PickupDelay:-1,Tags:["copy"]}
data modify entity @n[tag=copy,type=item] Item set from entity @s Inventory.[{Slot:0b}]
data modify entity @n[tag=copy,type=item] PickupDelay set value 1
tag @n[tag=copy,type=item] add copy_end
tag @n[tag=copy,type=item] remove copy

scoreboard players operation @s kardCount -= #kard_fuzhi kardCount
