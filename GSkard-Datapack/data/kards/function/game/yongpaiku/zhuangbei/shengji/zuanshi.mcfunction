function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:diamond_helmet[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.zuanshi.1", fallback: "钻石头盔",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:diamond_chestplate[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.zuanshi.2", fallback: "钻石胸甲",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:diamond_leggings[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.zuanshi.3", fallback: "钻石护腿",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:diamond_boots[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.zuanshi.4", fallback: "钻石靴子",color:"aqua"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_zuanshishengji kardCount
