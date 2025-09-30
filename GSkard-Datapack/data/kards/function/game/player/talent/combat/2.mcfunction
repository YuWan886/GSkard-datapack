scoreboard players remove @s Talent_Count 2
tellraw @s [{translate: "kards.function.game.player.talent.combat.1.1", fallback: "[天赋]",color:"green"},{translate: "kards.function.game.player.talent.combat.1.2", fallback: "您消耗了",color:"gray"},{translate: "kards.function.game.player.talent.combat.2.1", fallback: "2点构想",color:"gold"},{translate: "kards.function.game.player.talent.combat.1.4", fallback: "升级了",color:"gray"},{translate: "kards.function.game.player.talent.combat.1.5", fallback: "战斗",color:"gold"}]

attribute @s attack_damage base set 3
attribute @s armor base set 2
