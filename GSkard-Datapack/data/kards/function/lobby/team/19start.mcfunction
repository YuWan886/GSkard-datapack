title @a title [{text:"多人模式",color:"gold",bold:true}]
#修改红生命上限为200HP
execute as @a[team=red] run attribute @s max_health base set 200
#修改蓝生命上限为180HP
execute as @a[team=blue] run attribute @s max_health base set 180
effect give @a[tag=Ready] instant_health 3 100 true
function kards:game/start/input