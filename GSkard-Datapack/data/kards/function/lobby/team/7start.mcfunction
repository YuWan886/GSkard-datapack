title @a title [{text:"七人模式",color:"gold",bold:true}]
#修改红生命上限为200HP
execute as @a[team=red] run attribute @s max_health base set 200
#修改蓝生命上限为150HP
execute as @a[team=blue] run attribute @s max_health base set 150
effect give @a instant_health 3 100 true
function kards:game/start/input