title @a title [{translate: "lobby.team.11start.1",color:"gold",bold:true}]
#修改红生命上限为200HP
execute as @a[team=red] run attribute @s max_health base set 200
#修改蓝生命上限为170HP
execute as @a[team=blue] run attribute @s max_health base set 170
effect give @a[tag=Ready] instant_health 3 100 true
function kards:game/start/input