execute unless score @s Xp_Levels matches 85.. run tellraw @s [{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.1", fallback: "[经验商店]",color:"green"},{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.2", fallback: "您的经验不足",color:"red"}]
execute unless score @s Xp_Levels matches 85.. run return run execute at @s run playsound minecraft:block.vault.eject_item player @s

tellraw @s [{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.1", fallback: "[经验商店]",color:"green"},{translate: "kards.function.game.player.talent.combat.1.2", fallback: "您消耗了",color:"gray"},{translate: "kards.function.game.xp.shop.enchantment.fengxingzhe.1", fallback: "85级经验",color:"gold"},{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.4", fallback: "购买了",color:"gray"},{translate: "kards.function.game.xp.shop.enchantment.fengxingzhe.2", fallback: "风行者 ",color:"white"},{translate: "kards.function.game.xp.shop.enchantment.bingshuangjingji.6", fallback: "I",color:"gray"}]
function kards:enchantment/book/shelf/fengxingzhe
execute at @s run playsound minecraft:block.vault.insert_item player @s
execute at @s run playsound minecraft:block.trial_spawner.spawn_item_begin player @s
xp add @s -85 levels