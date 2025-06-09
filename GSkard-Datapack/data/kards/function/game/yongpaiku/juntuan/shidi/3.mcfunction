title @a title "\u00a74尸帝降临"
execute as @a[distance=..100] at @s facing entity @e[tag=shidi_master] eyes run rotate @s ~ ~
execute as @a at @s run playsound minecraft:item.trident.thunder player @s ~ ~ ~
tellraw @a [{"text":"尸帝","color":"red"},{"text":" 使用了 ","color":"gold"},{"text":"[尸帝坦克形仆从]","color":"blue",hover_event:{"action":"show_text","value":"召唤一个尸帝坦克形随从"}}]
tellraw @a [{"text":"尸帝","color":"red"},{"text":" 使用了 ","color":"gold"},{"text":"[尸帝迅捷形随从]","color":"blue",hover_event:{"action":"show_text","value":"召唤一个尸帝迅捷形随从"}}]

function kards:game/yongpaiku/juntuan/shidi/shidi_summon_minions
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~
effect give @a minecraft:slowness 1 255
effect give @a minecraft:blindness 1 255
