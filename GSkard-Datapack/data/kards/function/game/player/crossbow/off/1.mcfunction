item modify entity @s weapon.offhand [{function:"set_contents",entries:[{type:"item",name:"arrow"}],component:"charged_projectiles"}]

execute if items entity @s weapon.offhand crossbow[enchantments~[{enchantments:"minecraft:multishot"}]] run return run function kards:game/player/crossbow/off/2
