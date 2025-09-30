function kards:game/yongpaiku/use_general/kard_general



execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon wither_skull ~ 7 ~ {Motion:[0d,-0.005d,0d],Passengers:[{id:zombie,CustomName:[{translate: "json.kards.dialog.paiku.juntuan.main.312", fallback: "尸帝",bold:true}],Glowing:1b,LeftHanded:1b,Tags:["shidi_master"],Team:blue,active_effects:[{id:resistance,duration:-1,amplifier:2,show_particles:0b}],equipment:{mainhand:{id:netherite_sword,components:{enchantments:{sharpness:5,'kards:fire_protection':2}}},offhand:{id:shield},head:{id:netherite_helmet,components:{enchantments:{protection:1}}},chest:{id:netherite_chestplate,components:{enchantments:{protection:1}}},legs:{id:netherite_leggings,components:{enchantments:{protection:1}}},feet:{id:netherite_boots,components:{enchantments:{protection:1}}}},attributes:[{id:max_health,base:45},{id:armor,base:-3},{id:scale,base:1.75},{id:attack_damage,base:2.5}]}]}

execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon wither_skull ~ 7 ~ {Motion:[0d,-0.005d,0d],Passengers:[{id:zombie,CustomName:[{translate: "json.kards.dialog.paiku.juntuan.main.312", fallback: "尸帝",bold:true}],Glowing:1b,LeftHanded:1b,Tags:["shidi_master"],Team:red,active_effects:[{id:resistance,duration:-1,amplifier:2,show_particles:0b}],equipment:{mainhand:{id:netherite_sword,components:{enchantments:{sharpness:5,'kards:fire_protection':2}}},offhand:{id:shield},head:{id:netherite_helmet,components:{enchantments:{protection:1}}},chest:{id:netherite_chestplate,components:{enchantments:{protection:1}}},legs:{id:netherite_leggings,components:{enchantments:{protection:1}}},feet:{id:netherite_boots,components:{enchantments:{protection:1}}}},attributes:[{id:max_health,base:45},{id:armor,base:-3},{id:scale,base:1.75},{id:attack_damage,base:2.5}]}]}
title @a title "\u00a74尸"
schedule function kards:game/yongpaiku/juntuan/shidi/1 5t
execute as @a at @s run playsound minecraft:block.fire.extinguish player @s ~ ~ ~
function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air

scoreboard players operation @s kardCount -= #kard_shidi kardCount