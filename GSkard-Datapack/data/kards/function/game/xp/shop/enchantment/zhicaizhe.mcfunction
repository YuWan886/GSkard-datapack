execute unless score @s Xp_Levels matches 80.. run tellraw @s [{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.1", fallback: "[经验商店]",color:"green"},{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.2", fallback: "您的经验不足",color:"red"}]
execute unless score @s Xp_Levels matches 80.. run return run execute at @s run playsound minecraft:block.vault.eject_item player @s

tellraw @s [{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.1", fallback: "[经验商店]",color:"green"},{translate: "kards.function.game.player.talent.combat.1.2", fallback: "您消耗了",color:"gray"},{translate: "kards.function.game.xp.shop.enchantment.jihanzhichu.1", fallback: "80级经验",color:"gold"},{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.4", fallback: "购买了",color:"gray"},{translate: "kards.function.game.xp.shop.enchantment.zhicaizhe.1", fallback: "制裁者 ",color:"dark_aqua"},{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.6", fallback: "I",color:"gray"}]
function kards:enchantment/book/shelf/zhicaizhe
execute at @s run playsound minecraft:block.vault.insert_item player @s
execute at @s run playsound minecraft:block.trial_spawner.spawn_item_begin player @s
xp add @s -80 levels