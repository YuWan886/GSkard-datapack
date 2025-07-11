clear @s *[minecraft:custom_data={kards:'灵魂_中'}] 10
tellraw @s [{text: "灵魂合成了...",color:"gray"}]
give @s minecraft:ghast_tear[minecraft:custom_name={italic:false,text: "灵魂 [强大]",color:"dark_purple"},lore=[{text: "生物的灵魂",color:"gray",italic:false},{text: "收集10个以后合成",color:"gray",italic:false},{text: ""},{text: "可食用",color:"gray",italic:false},[{text: "获得",color:"gray",italic:false},{text: "100♥",color:"green",italic:false}]],custom_data={kards:'灵魂_大'},consumable={consume_seconds:0.4f,has_consume_particles:1b,on_consume_effects:[{type:play_sound,sound:"minecraft:entity.ghast.ambient"}]}]
