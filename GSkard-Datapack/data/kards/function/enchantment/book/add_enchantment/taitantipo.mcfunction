item modify entity @s weapon.mainhand {function:"set_enchantments",enchantments:{"kards:taitantipo":1},add:true}
execute store result score @s mainhand_enchantment_levels run data get entity @s SelectedItem.components."minecraft:enchantments".kards:taitantipo
tellraw @s [{text:"成功为主手物品添加附魔",color:"green"},{text:"泰坦体魄 I",color:"gold"},{text:"\n当前物品",color:"gray"},{text:"泰坦体魄",color:"gold"},{text:"等级为",color:"gray"},{score:{name:"@s",objective:"mainhand_enchantment_levels"},color:"green"}]
item replace entity @s weapon.offhand with air
execute at @s run playsound block.enchantment_table.use player @s ~ ~ ~ 100 1