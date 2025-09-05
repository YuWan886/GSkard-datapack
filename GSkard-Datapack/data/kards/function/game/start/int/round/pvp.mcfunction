bossbar set roundtime visible false

function kards:game/ingame/round/pvpround/waitstart
difficulty hard
scoreboard players add @a[gamemode=adventure] zhuangbeicishu 10

scoreboard players set @a[gamemode=adventure] cishu 0
bossbar set minecraft:roundtime visible false

execute as @a[gamemode=adventure] run function kards:game/yongpaiku/shenji/wangzhibaoku/random3
function kards:game/ingame/round/skill