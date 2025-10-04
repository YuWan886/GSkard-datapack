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
# Equipment
item replace entity @s armor.chest with minecraft:netherite_chestplate[minecraft:custom_name={italic:false,text: "下界合金胸甲",color:"dark_gray"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]},lore=[{text: "套装效果：",color:"gray",italic:false},[{text: "穿戴2件时 获得",color:"gray",italic:false},{text: "抗性提升2",color:"gold",italic:false}],[{text: "穿戴3件时 获得",color:"gray",italic:false},{text: "抗性提升3",color:"gold",italic:false}],[{text: "穿戴4件时 获得",color:"gray",italic:false},{text: "抗性提升4",color:"gold",italic:false}]],custom_data={kards:'下界合金护甲'},enchantments={binding_curse:1}]
item replace entity @s armor.legs with minecraft:netherite_leggings[minecraft:custom_name={italic:false,text: "下界合金护腿",color:"dark_gray"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]},lore=[{text: "套装效果：",color:"gray",italic:false},[{text: "穿戴2件时 获得",color:"gray",italic:false},{text: "抗性提升2",color:"gold",italic:false}],[{text: "穿戴3件时 获得",color:"gray",italic:false},{text: "抗性提升3",color:"gold",italic:false}],[{text: "穿戴4件时 获得",color:"gray",italic:false},{text: "抗性提升4",color:"gold",italic:false}]],custom_data={kards:'下界合金护甲'},enchantments={binding_curse:1}]
item replace entity @s armor.head with minecraft:netherite_helmet[minecraft:custom_name={italic:false,text: "下界合金头盔",color:"dark_gray"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]},lore=[{text: "套装效果：",color:"gray",italic:false},[{text: "穿戴2件时 获得",color:"gray",italic:false},{text: "抗性提升2",color:"gold",italic:false}],[{text: "穿戴3件时 获得",color:"gray",italic:false},{text: "抗性提升3",color:"gold",italic:false}],[{text: "穿戴4件时 获得",color:"gray",italic:false},{text: "抗性提升4",color:"gold",italic:false}]],custom_data={kards:'下界合金护甲'},enchantments={binding_curse:1}]
item replace entity @s armor.feet with minecraft:netherite_boots[minecraft:custom_name={italic:false,text: "下界合金靴子",color:"dark_gray"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]},lore=[{text: "套装效果：",color:"gray",italic:false},[{text: "穿戴2件时 获得",color:"gray",italic:false},{text: "抗性提升2",color:"gold",italic:false}],[{text: "穿戴3件时 获得",color:"gray",italic:false},{text: "抗性提升3",color:"gold",italic:false}],[{text: "穿戴4件时 获得",color:"gray",italic:false},{text: "抗性提升4",color:"gold",italic:false}]],custom_data={kards:'下界合金护甲'},enchantments={binding_curse:1}]

