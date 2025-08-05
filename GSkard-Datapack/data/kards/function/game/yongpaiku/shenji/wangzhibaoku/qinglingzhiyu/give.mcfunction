
execute unless score #system GameStatus matches 0 run tellraw @a [{selector:"@s"},{text: "获得了",color:"gold"},{text: "轻灵之语",color:"white"}]
give @s bow[custom_name={italic:false,color:"aqua",text: "轻灵之语"},lore=[{color:"gray",text: "风之庇护",italic:false},{color:"dark_gray",text: "拿在手中时 获得38%移速加成",italic:false},{color:"gray",text: "风袭",italic:false},{color:"dark_gray",text: "使用轻灵之语近战攻击会使目标旋转1.75s",italic:false},{color:"dark_gray",text: "10s补充一次",italic:false},{color:"white",text: "传奇武器 无法升级",italic:false}],enchantments={power:4,infinity:1,punch:1},unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]},custom_data={kards:'轻灵之语'},item_model="kards:light_feather",tooltip_style="kard/shenqi"]
give @s arrow 1
