execute unless score @s Xp_Levels matches 75.. run tellraw @s [{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.1", fallback: "[经验商店]",color:"green"},{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.2", fallback: "您的经验不足",color:"red"}]
execute unless score @s Xp_Levels matches 75.. run return run execute at @s run playsound minecraft:block.vault.eject_item player @s

tellraw @s [{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.1", fallback: "[经验商店]",color:"green"},{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.3", fallback: "您消耗了",color:"gray"},{translate: "kards.function.game.xp.shop.enchantment.taitantipo.1", fallback: "75级经验",color:"gold"},{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.5", fallback: "购买了",color:"gray"},{translate: "kards.function.game.xp.shop.enchantment.xinxingbaofa.1", fallback: "新星爆发 ",color:"red"},{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.7", fallback: "I",color:"gray"}]
function kards:enchantment/book/shelf/xinxingbaofa
execute at @s run playsound minecraft:block.vault.insert_item player @s
execute at @s run playsound minecraft:block.trial_spawner.spawn_item_begin player @s
xp add @s -75 levels