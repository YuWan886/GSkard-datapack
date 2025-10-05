function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:golden_helmet[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.jin.1", fallback: "金头盔",color:"gold"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:golden_chestplate[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.jin.2", fallback: "金胸甲",color:"gold"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:golden_leggings[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.jin.3", fallback: "金护腿",color:"gold"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:golden_boots[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.jin.4", fallback: "金靴子",color:"gold"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_jinshengji kardCount
