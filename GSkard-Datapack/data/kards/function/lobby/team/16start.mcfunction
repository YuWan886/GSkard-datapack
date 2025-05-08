title @a title [{"text":"多人模式","color":"gold","bold":true}]
#修改生命上限为200HP
execute as @a[tag=Ready] run attribute @s max_health base set 200
effect give @a[tag=Ready] instant_health 3 100 true
function kards:game/start/input