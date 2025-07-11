particle dust{color: [0.63,0.21,0.21], scale: 1.4} ~ ~2.2 ~
tp @s ^ ^ ^0.25

execute unless entity @e[tag=marker_feixue_2,distance=..0.3] positioned ^ ^ ^0.15 run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/4

execute if entity @e[tag=marker_feixue_2,distance=..0.3] run kill @n[type=marker,tag=marker_feixue_1]
execute if entity @e[tag=marker_feixue_2,distance=..0.3] run kill @s

