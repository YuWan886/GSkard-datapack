function kards:game/yongpaiku/use_general/kard_general



give @s minecraft:netherite_sword[minecraft:custom_name={italic:false,translate: "json.kards.dialog.paiku.zhuangbei.main.792", fallback: "下界合金剑",color:"dark_gray"},lore=[{translate: "kards.function.game.yongpaiku.zhuangbei.xiajiehejinjian.1", fallback: "潜能无限",color:"dark_gray",italic:true},{translate: "json.kards.dialog.first_join.1.71", fallback: ""},{translate: "kards.function.game.start.int.player.3", fallback: "在主手时：",color:"gray",italic:false},{translate: "kards.function.game.yongpaiku.shenji.wangzhibaoku.shizhongjian.give.4", fallback: " 12 攻击伤害",color:"dark_green",italic:false},{translate: "kards.function.game.yongpaiku.zhuangbei.jinjian.2", fallback: " 1.6 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:12,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-2.4,slot:"mainhand",operation:"add_value",id:"1"}],minecraft:unbreakable={},custom_data={kards:'下界合金剑'},tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_xiajiehejinjian kardCount
