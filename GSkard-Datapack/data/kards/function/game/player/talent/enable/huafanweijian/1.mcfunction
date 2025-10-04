summon item ~ ~ ~ {Item:{id:"music_disc_11",count:1},Tags:["Item_Start","Item_Start_"]}
data modify entity @n[tag=Item_Start] Item set from entity @s equipment.head
tag @n[tag=Item_Start] remove Item_Start

summon item ~ ~ ~ {Item:{id:"music_disc_11",count:1},Tags:["Item_Start","Item_Start_"]}
data modify entity @n[tag=Item_Start] Item set from entity @s equipment.chest
tag @n[tag=Item_Start] remove Item_Start

summon item ~ ~ ~ {Item:{id:"music_disc_11",count:1},Tags:["Item_Start","Item_Start_"]}
data modify entity @n[tag=Item_Start] Item set from entity @s equipment.feet
tag @n[tag=Item_Start] remove Item_Start

summon item ~ ~ ~ {Item:{id:"music_disc_11",count:1},Tags:["Item_Start","Item_Start_"]}
data modify entity @n[tag=Item_Start] Item set from entity @s equipment.legs
tag @n[tag=Item_Start] remove Item_Start

execute as @e[tag=Item_Start_] if data entity @s Item{"id":"minecraft:music_disc_11"} run kill @s
tag @e[tag=Item_Start_] remove Item_Start_

item replace entity @s armor.head with barrier[enchantments={binding_curse:1},equippable={slot:"head"}]
item replace entity @s armor.chest with barrier[enchantments={binding_curse:1},equippable={slot:"chest"}]
item replace entity @s armor.feet with barrier[enchantments={binding_curse:1},equippable={slot:"feet"}]
item replace entity @s armor.legs with barrier[enchantments={binding_curse:1},equippable={slot:"legs"}]

