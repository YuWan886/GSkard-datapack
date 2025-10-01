function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:iron_axe[minecraft:custom_name={italic:false,translate: "json.kards.dialog.paiku.zhuangbei.main.1201", fallback: "铁斧",color:"white"},lore=[{translate: "kards.function.game.yongpaiku.zhuangbei.tiefu.1", fallback: "算得上趁手",color:"dark_gray",italic:true},{translate: "json.kards.dialog.first_join.1.71", fallback: ""},{translate: "kards.function.game.start.int.player.3", fallback: "在主手时：",color:"gray",italic:false},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.sishenzhilian.give.2", fallback: " 9 攻击伤害",color:"dark_green",italic:false},{translate: "kards.function.game.yongpaiku.zhuangbei.tiefu.2", fallback: " 1 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:8,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-3,slot:"mainhand",operation:"add_value",id:"1"}],custom_data={kards:'铁斧'},minecraft:unbreakable={},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]

item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_tiefu kardCount
