function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:iron_helmet[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.tie.1", fallback: "铁头盔",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:iron_chestplate[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.tie.2", fallback: "铁胸甲",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:iron_leggings[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.tie.3", fallback: "铁护腿",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
give @s minecraft:iron_boots[minecraft:custom_name={italic:false,translate: "kards.function.game.yongpaiku.zhuangbei.shengji.tie.4", fallback: "铁靴子",color:"white"},minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tieshengji kardCount
