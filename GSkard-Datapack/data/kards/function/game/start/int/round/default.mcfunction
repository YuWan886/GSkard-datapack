title @a title [{text: "天赋选择回合",color:"white",bold:true}]
bossbar set minecraft:roundtime color white
scoreboard players set @a CanuseKard 0
scoreboard players set @a Skip_Round 0
scoreboard players set @a[gamemode=adventure] cishu 5
scoreboard players operation time roundtime = #system roundtime
scoreboard players set #system GameRound 2
scoreboard players set 回合数 GameRound 0

execute if score #system DifficultyRound matches 1 run return run difficulty hard
tellraw @a [{text: "当前游戏难度：普通",color:"gold",bold:true},{text: "\n怪物造成的伤害为1倍",color:"gray",bold:true}]
difficulty normal
function kards:game/ingame/round/fashu with storage minecraft:changdidaxiao

function kards:game/start/tp