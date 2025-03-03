execute unless score system status matches 0 run tellraw @a [{selector:"@s"},{text:"获得了",color:"gold"},{text:"烟花弩",color:"dark_red"}]

give @s bow[item_name={color:"aqua",text:"定点扫射装置"},lore=[{color:"gray",text:"速度叠加",italic:false},{color:"white",text:"传奇武器 无法升级",italic:false},{color:"dark_gray",text:"每次射击命中玩家将会给自己1层移度提升",italic:true},{color:"dark_gray",text:"最多4层 8s后重置",italic:true}],enchantments={power:4,infinity:1},unbreakable={},custom_data={kards:'定点扫射装置'}]
