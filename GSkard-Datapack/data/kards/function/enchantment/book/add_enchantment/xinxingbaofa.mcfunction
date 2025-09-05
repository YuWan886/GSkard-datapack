item modify entity @s weapon.mainhand {function:"set_enchantments",enchantments:{"kards:xinxingbaofa":1},add:true}
execute store result score @s mainhand_enchantment_levels run data get entity @s SelectedItem.components."minecraft:enchantments".kards:xinxingbaofa
tellraw @s [{text:"成功为主手物品添加附魔",color:"green"},{text:"新星爆发 I",color:"gold"},{text:"\n当前物品",color:"gray"},{text:"新星爆发",color:"gold"},{text:"等级为",color:"gray"},{score:{name:"@s",objective:"mainhand_enchantment_levels"},color:"green"}]
item replace entity @s weapon.offhand with air
execute at @s run playsound block.enchantment_table.use player @s ~ ~ ~ 100 1