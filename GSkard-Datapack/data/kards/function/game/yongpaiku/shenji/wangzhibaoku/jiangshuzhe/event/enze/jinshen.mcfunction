tellraw @a [{text: "《恩泽·金身章》",color: "green",bold:true}]
tellraw @a [{text: "\"凡胎沐浴天光 铸就不朽金身 万法不侵\"",color: "gray"}]
tellraw @a [{text: "本回合 ",color: "gold"},{selector:"@s"},{text: "队伍生物获得抗性提升3 缓慢2",color: "gold"}]

execute as @s[team=red] run scoreboard players set red jiangshuzhe_jinshen 1
execute as @s[team=blue] run scoreboard players set blue jiangshuzhe_jinshen 1