execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Enable matches 1 run return run tellraw @s [{translate: "kards.function.game.player.talent.set.bujingtanyu.1", fallback: "你本轮已选择过天赋!",color:red}]
execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Enable matches 2 run return run tellraw @s [{translate: "kards.function.game.player.talent.set.bujingtanyu.1", fallback: "你本轮已选择过天赋!",color:red}]
tag @s add Talent_lingxiansiwei
scoreboard players add @s kardCountmax 40
scoreboard players add @s cishu 5
execute if score #system Talent_Random_Mode matches 1 run scoreboard players set @s Talent_Enable 1
execute if score #system Talent_Random_Mode matches 2 run scoreboard players set @s Talent_Enable 2

# Tellraw
tellraw @s [{translate: "kards.function.game.player.talent.set.lingxiansiwei.1", fallback: "「领先思维」",color:aqua,bold:true},{translate: "kards.function.game.player.talent.set.bujingtanyu.3", fallback: "已开启!",color:gold,bold:true}]