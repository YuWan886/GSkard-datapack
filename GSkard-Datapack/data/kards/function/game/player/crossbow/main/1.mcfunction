item modify entity @s weapon.mainhand [{function:"set_contents",entries:[{type:"item",name:"arrow"}],component:"charged_projectiles"}]

execute if items entity @s weapon.mainhand crossbow[enchantments~[{enchantments:"minecraft:multishot"}]] run return run function kards:game/player/crossbow/main/2
