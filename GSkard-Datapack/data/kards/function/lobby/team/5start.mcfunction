title @a title [{text: "五人模式",color:"gold",bold:true}]
#修改红生命上限为200HP
execute as @a[team=red] run attribute @s max_health base set 200
#修改蓝生命上限为135HP
execute as @a[team=blue] run attribute @s max_health base set 135
function kards:game/start/input
