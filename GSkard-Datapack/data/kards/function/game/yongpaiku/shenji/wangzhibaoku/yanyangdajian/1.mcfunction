#沸血

execute if entity @s[team=red] run summon marker ~ ~ ~ {Tags:["marker_feixue","red"]}
execute if entity @s[team=blue] run summon marker ~ ~ ~ {Tags:["marker_feixue","blue"]}
#execute store result entity @n[tag=marker_feixue,type=marker] UUID int 1 run data get entity @s UUID
tag @s add hurt_for_feixue
