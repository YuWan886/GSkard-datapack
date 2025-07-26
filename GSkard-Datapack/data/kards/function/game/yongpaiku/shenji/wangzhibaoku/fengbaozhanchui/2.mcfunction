
execute unless block ~ ~ ~ #air positioned ^ ^ ^-0.25 run return run function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/3

#execute if entity @s[team=red] if entity @e[team=blue,distance=..2] run return run function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/3
#execute if entity @s[team=blue] if entity @e[team=red,distance=..2] run return run function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/3

execute if block ~ ~ ~ #air positioned ^ ^ ^0.25 run function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/2
