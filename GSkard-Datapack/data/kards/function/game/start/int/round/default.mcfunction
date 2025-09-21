title @a title [{text: "红方回合",color:"red",bold:true}]
bossbar set minecraft:roundtime color white
scoreboard players set @a[team=red] CanuseKard 1
scoreboard players set @a[team=blue] CanuseKard 0
scoreboard players set @a[team=red] tiaoguo 1
scoreboard players set @a[team=blue] tiaoguo 0
execute as @a[scores={CanuseKard=1}] run scoreboard players operation @s kardCount = @s kardCountmax
scoreboard players set @a[gamemode=adventure] cishu 5
scoreboard players operation time roundtime = #system roundtime
scoreboard players set #system GameRound 1
scoreboard players set 回合数 GameRound 1

execute if score #system DifficultyRound matches 1 run return run difficulty hard
tellraw @a [{text: "当前游戏难度：普通",color:"gold",bold:true},{text: "\n怪物造成的伤害为1倍",color:"gray",bold:true}]
difficulty normal
function kards:game/ingame/round/fashu with storage minecraft:changdidaxiao

function kards:game/start/tp