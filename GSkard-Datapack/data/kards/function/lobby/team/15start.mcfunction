title @a title [{text: "多人模式",color:"gold",bold:true}]
#修改红生命上限为200HP
execute as @a[team=red] run attribute @s max_health base set 200
#修改蓝生命上限为175HP
execute as @a[team=blue] run attribute @s max_health base set 175
function kards:game/start/input
