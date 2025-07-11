#生成一个掉落物实体 带有无法被沉默清除的标签replaace_item
execute if items entity @s armor.chest * run summon item ~ ~ ~ {PickupDelay:-1,Item:{id:"music_disc_11"},Tags:["replaace_item"]}
data modify entity @n[tag=replaace_item,type=item] Item set from entity @s equipment.chest
data modify entity @n[tag=replaace_item,type=item] PickupDelay set value 1
data modify entity @n[tag=replaace_item,type=item] Owner set from entity @s UUID
#替换为诅咒护甲
item replace entity @s armor.chest with golden_chestplate[item_name=[{text: "诅咒护甲",color:"red"}],enchantments={binding_curse:1},attribute_modifiers=[{type:armor,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:attack_damage,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:attack_speed,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"},{type:movement_speed,amount:-0.5,slot:chest,operation:add_multiplied_total,id:"1"}],tooltip_display={hidden_components:["enchantments"]},custom_data={kards:'诅咒护甲'},unbreakable={}]
#添加tag以便回合结束时清除
tag @s add zuzhouhujia
