tellraw @a [{text: "《恩泽·薪火章》",color: "green",bold:true}]
tellraw @a [{text: "\"前人燃尽自身 化为火种 为后继者照亮前路\"",color: "gray"}]
execute as @s[team=red] run tellraw @a [{text: "本回合 ",color: "gold"},{text:"红队",color:"red"},{text: "队伍怪物死亡后 为范围5格内生物提供治疗",color: "gold"}]
execute as @s[team=blue] run tellraw @a [{text: "本回合 ",color: "gold"},{text:"蓝队",color:"blue"},{text: "队伍怪物死亡后 为范围5格内生物提供治疗",color: "gold"}]

execute as @s[team=red] run scoreboard players set red jiangshuzhe_xinhuo 1
execute as @s[team=blue] run scoreboard players set blue jiangshuzhe_xinhuo 1