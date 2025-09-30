function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:crossbow[minecraft:custom_name={italic:false,translate: "kards.function.enchantment.book.shelf.zhicaizhe.2", fallback: "弩",color:"gold"},lore=[{translate: "kards.function.game.start.int.player.6", fallback: "新时代战斗工具!",color:"gray",italic:false}],custom_data={kards:'弩'},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]},charged_projectiles=[{id:"minecraft:arrow",count:1b}]]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jinjian kardCount
