# 再来一罐
tellraw @a [{text:"哇！大奖！",color:"gray"},{text:"再来一罐！",color:"gold"}]
execute at @s run playsound entity.evoker.prepare_wololo player @s ~ ~ ~ 100 1

give @s minecraft:magenta_shulker_box[item_name=[{text: "4K",color:"aqua"},{text: " 再来一罐",color:"light_purple"}],lore=[[{text: "获得两个",color:"gray",italic:false},{text: "酸辣无骨鸡爪",color:"red",italic:false}]],custom_data={kards:'再来一罐'}]

scoreboard players set #kard_zailaiyiguan kardCount 4