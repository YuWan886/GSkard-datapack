#沸血

execute if entity @s[team=red] run summon marker ~ ~ ~ {Tags:["marker_feixue","red"]}
execute if entity @s[team=blue] run summon marker ~ ~ ~ {Tags:["marker_feixue","blue"]}

tag @s add hurt_for_feixue
