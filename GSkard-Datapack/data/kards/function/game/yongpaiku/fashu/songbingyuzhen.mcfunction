



function kards:game/yongpaiku/xianjing/jiance/fashujiance

scoreboard players operation @s kardCount -= #kard_songbingyuzhen kardCount
function kards:game/yongpaiku/use_general/kard_general
execute if entity @s[type=player] unless items entity @s weapon.offhand * run return fail
item replace entity @s weapon.offhand with air
execute if entity @s[team=red] at @a[gamemode=adventure,team=blue] run summon minecraft:falling_block ~ ~4.5 ~ {BlockState:{Name:"anvil"},CancelDrop:1b,DropItem:0b,FallHurtAmount:25.0f,FallHurtMax:25,HurtEntities:1b,Invulnerable:1b,Motion:[0,-0.6d,0],NoGravity:0b}
execute if entity @s[team=blue] at @a[gamemode=adventure,team=red] run summon minecraft:falling_block ~ ~4.5 ~ {BlockState:{Name:"anvil"},CancelDrop:1b,DropItem:0b,FallHurtAmount:25.0f,FallHurtMax:25,HurtEntities:1b,Invulnerable:1b,Motion:[0,-0.6d,0],NoGravity:0b}