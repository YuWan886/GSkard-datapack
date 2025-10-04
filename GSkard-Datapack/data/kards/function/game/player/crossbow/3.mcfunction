$execute if items entity @s weapon.mainhand crossbow run item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:$(speed)}
$execute if items entity @s weapon.offhand crossbow run item modify entity @s weapon.offhand {function:"set_damage",add:true,damage:$(speed)}

execute if items entity @s weapon.mainhand crossbow[damage=0,charged_projectiles=[]] run function kards:game/player/crossbow/main/1
execute if items entity @s weapon.offhand crossbow[damage=0,charged_projectiles=[]] run function kards:game/player/crossbow/off/1
