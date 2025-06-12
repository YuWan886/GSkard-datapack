title @a title "\u00a74尸帝降临"
execute as @a[distance=..100] at @s facing entity @e[tag=shidi_master] eyes run rotate @s ~ ~
execute as @a at @s run playsound minecraft:item.trident.thunder player @s ~ ~ ~
tellraw @a [{"text":"尸帝","color":"red"},{"text":" 使用了 ","color":"gold"},{"text":"[吾令]","color":"dark_green",hover_event:{"action":"show_text","value":"将场上所有僵尸变为尸帝随从"}}]
tellraw @a [{"text":"尸帝","color":"red"},{"text":" 使用了 ","color":"gold"},{"text":"[护卫]","color":"dark_green",hover_event:{"action":"show_text","value":"召唤两只尸帝护卫"}}]
execute at @s run playsound minecraft:entity.zombie_villager.cure player @a[distance=..20] ~ ~ ~ 100 2
execute as @e[type=zombie,tag=shidi_master] at @s run function kards:game/yongpaiku/juntuan/shidi/shidi_summon_minions
execute as @e[type=zombie,tag=shidi_master] at @s run function kards:game/yongpaiku/juntuan/shidi/5
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~
effect give @a minecraft:slowness 1 255
effect give @a minecraft:blindness 1 255
