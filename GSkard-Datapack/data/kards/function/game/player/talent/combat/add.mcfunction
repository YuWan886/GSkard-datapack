execute if score @s Talent_Combat matches 0 unless score @s Talent_Count matches 1.. run tellraw @s [{translate: "kards.function.game.player.talent.combat.1.1", fallback: "[天赋]",color:"green"},{translate: "kards.function.game.player.talent.combat.add.1", fallback: "您的构想不足",color:"red"}]
execute if score @s Talent_Combat matches 0 unless score @s Talent_Count matches 1.. run return run execute at @s run playsound minecraft:block.vault.eject_item player @s

execute if score @s Talent_Combat matches 1 unless score @s Talent_Count matches 2.. run tellraw @s [{translate: "kards.function.game.player.talent.combat.1.1", fallback: "[天赋]",color:"green"},{translate: "kards.function.game.player.talent.combat.add.1", fallback: "您的构想不足",color:"red"}]
execute if score @s Talent_Combat matches 1 unless score @s Talent_Count matches 2.. run return run execute at @s run playsound minecraft:block.vault.eject_item player @s

execute if score @s Talent_Combat matches 2 unless score @s Talent_Count matches 3.. run tellraw @s [{translate: "kards.function.game.player.talent.combat.1.1", fallback: "[天赋]",color:"green"},{translate: "kards.function.game.player.talent.combat.add.1", fallback: "您的构想不足",color:"red"}]
execute if score @s Talent_Combat matches 2 unless score @s Talent_Count matches 3.. run return run execute at @s run playsound minecraft:block.vault.eject_item player @s

execute if score @s Talent_Combat matches 3 unless score @s Talent_Count matches 4.. run tellraw @s [{translate: "kards.function.game.player.talent.combat.1.1", fallback: "[天赋]",color:"green"},{translate: "kards.function.game.player.talent.combat.add.1", fallback: "您的构想不足",color:"red"}]
execute if score @s Talent_Combat matches 3 unless score @s Talent_Count matches 4.. run return run execute at @s run playsound minecraft:block.vault.eject_item player @s

execute if score @s Talent_Combat matches 4 unless score @s Talent_Count matches 5.. run tellraw @s [{translate: "kards.function.game.player.talent.combat.1.1", fallback: "[天赋]",color:"green"},{translate: "kards.function.game.player.talent.combat.add.1", fallback: "您的构想不足",color:"red"}]
execute if score @s Talent_Combat matches 4 unless score @s Talent_Count matches 5.. run return run execute at @s run playsound minecraft:block.vault.eject_item player @s

execute if score @s Talent_Combat matches 5.. run tellraw @s [{translate: "kards.function.game.player.talent.combat.1.1", fallback: "[天赋]",color:"green"},{translate: "kards.function.game.player.talent.combat.add.2", fallback: "您的战斗等级已满",color:"gold"}]
execute if score @s Talent_Combat matches 5.. run return run execute at @s run playsound minecraft:block.vault.eject_item player @s

execute at @s run playsound minecraft:block.vault.insert_item player @s
execute at @s run playsound minecraft:block.trial_spawner.spawn_item_begin player @s

scoreboard players add @s Talent_Combat 1

execute if score @s Talent_Combat matches 1 run function kards:game/player/talent/combat/1
execute if score @s Talent_Combat matches 2 run function kards:game/player/talent/combat/2
execute if score @s Talent_Combat matches 3 run function kards:game/player/talent/combat/3
execute if score @s Talent_Combat matches 4 run function kards:game/player/talent/combat/4
execute if score @s Talent_Combat matches 5 run function kards:game/player/talent/combat/5