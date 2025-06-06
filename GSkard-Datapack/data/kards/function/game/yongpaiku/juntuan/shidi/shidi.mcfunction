scoreboard players set @s pingbi 0
#tellraw @s [{"text":"[尸帝] 已冷却完成","color":"red"}]
#summon minecraft:zombie ~1 ~ ~ {CustomName:'{"text":"尸仆","italic":false,"color":"dark_red"}',Team:$1,PersistenceRequired:1b,NoAI:1b,Invulnerable:1b,FollowRange:0f,Leash:I:{Pos:[I;~L ~L ~L]},Tags:["shidi_minion"]}
#summon minecraft:zombie ~-1 ~ ~ {CustomName:'{"text":"尸仆","italic":false,"color":"dark_red"}',Team:$1,PersistenceRequired:1b,NoAI:1b,Invulnerable:1b,FollowRange:0f,Leash:I:{Pos:[I;~L ~L ~L]},Tags:["shidi_minion"]}
#蓝队用
execute if entity @s[team=blue] as @e[tag=7b] at @s run summon wither_skull ~ 8 ~ {Motion:[0d,-0.005d,0d],Passengers:[{id:zombie,CustomName:[{text:"尸帝",bold:true}],Glowing:1b,LeftHanded:1b,Tags:["shidi_master"],Team:blue,active_effects:[{id:resistance,duration:99999,amplifier:2,show_particles:0b}],equipment:{mainhand:{id:netherite_sword,components:{Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:fire_aspect",lvl:2s}]}},offhand:{id:shield},head:{id:netherite_helmet,components:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}},chest:{id:netherite_chestplate,components:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}},legs:{id:netherite_leggings,components:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}},feet:{id:netherite_boots,components:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}}},attributes:[{id:max_health,base:45f},{id:armor,base:-3f},{id:scale,base:1.75f},{id:attack_damage,base:2.5f}]}]}
#红队用
execute if entity @s[team=red] as @e[tag=7r] at @s run summon wither_skull ~ 8 ~ {Motion:[0d,-0.005d,0d],Passengers:[{id:zombie,CustomName:[{text:"尸帝",bold:true}],Glowing:1b,LeftHanded:1b,Tags:["shidi_master"],Team:red,active_effects:[{id:resistance,duration:99999,amplifier:2,show_particles:0b}],equipment:{mainhand:{id:netherite_sword,components:{Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:fire_aspect",lvl:2s}]}},offhand:{id:shield},head:{id:netherite_helmet,components:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}},chest:{id:netherite_chestplate,components:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}},legs:{id:netherite_leggings,components:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}},feet:{id:netherite_boots,components:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}}},attributes:[{id:max_health,base:45f},{id:armor,base:-3f},{id:scale,base:1.75f},{id:attack_damage,base:2.5f}]}]}
execute if score @s pingbi matches 0 run title @a title "\u00a74尸"
schedule function kards:game/yongpaiku/juntuan/shidi/1 5t
execute if score @s pingbi matches 0 run tellraw @a [{"selector":"@s"},{"text":" 使用了 ","color":"gold"},{"text":"[尸帝]","color":"dark_red",hoverEvent:{"action":"show_text","value":"召唤尸帝本"}}]
execute as @a at @s run playsound minecraft:block.fire.extinguish player @s ~ ~ ~
function kards:game/yongpaiku/xianjin/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_shidi kardCount
scoreboard players set @s pingbi 1
