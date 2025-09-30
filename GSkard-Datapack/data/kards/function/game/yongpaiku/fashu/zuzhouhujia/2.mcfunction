
title @s times 10t 2s 10t
title @s title [{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.2.1", fallback: "[诅咒护甲]",color:"light_purple"},{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.2.2", fallback: "作用于你",color:"gray"}]
title @s subtitle [{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.2.3", fallback: "原装备已掉落",color:"gray"}]

#生成一个掉落物实体 带有无法被沉默清除的标签replaace_item
execute if items entity @s armor.chest * run summon item ~ ~ ~ {PickupDelay:-1,Item:{id:"music_disc_11"},Tags:["replace_item"],Invulnerable:1b}
data modify entity @n[tag=replace_item,type=item] Item set from entity @s equipment.chest
data modify entity @n[tag=replace_item,type=item] PickupDelay set value 1
data modify entity @n[tag=replace_item,type=item] Owner set from entity @s UUID
#替换为诅咒护甲
item replace entity @s armor.chest with golden_chestplate[item_name=[{translate: "json.kards.dialog.paiku.fashu.main.205", fallback: "诅咒护甲",color:"red"}],lore=[{translate: "kards.function.game.yongpaiku.fashu.zuzhouhujia.2.4", fallback: "回合结束时清除",color:"gray",italic:false}],enchantments={binding_curse:1},attribute_modifiers=[{type:armor,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:attack_damage,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:attack_speed,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:movement_speed,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"}],tooltip_display={hidden_components:["enchantments","unbreakable"]},custom_data={kards:'诅咒护甲'},unbreakable={}]
#添加tag以便回合结束时清除
tag @s add zuzhouhujia

