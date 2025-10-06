tellraw @a [{text: "《灾章·朽坏章》",color: "dark_red",bold:true}]
tellraw @a [{text: "\"盛极必衰 其势自溃\"",color: "gray"}]
execute as @s[team=red] run tellraw @a [{text: "统计",color: "gold"},{text:"蓝队",color:"blue"},{text: "队伍上回合使用K之和取一半\n",color: "gold"},{text: "造成等额伤害随机分配至蓝队所有玩家",color: "red"}]
execute as @s[team=blue] run tellraw @a [{text: "统计",color: "gold"},{text:"红队",color:"red"},{text: "队伍上回合使用K之和取一半\n",color: "gold"},{text: "造成等额伤害随机分配至蓝队所有玩家",color: "red"}]

scoreboard players reset * jiangshuzhe_xiuhuai_Kmax

execute as @s[team=red] as @a[team=blue,gamemode=adventure] run scoreboard players operation blue jiangshuzhe_xiuhuai_Kmax += @s Use_K_Round
execute as @s[team=blue] as @a[team=red,gamemode=adventure] run scoreboard players operation red jiangshuzhe_xiuhuai_Kmax += @s Use_K_Round

execute as @s[team=red] store result storage temp kardCountmax int 0.5 run scoreboard players get blue jiangshuzhe_xiuhuai_Kmax
execute as @s[team=blue] store result storage temp kardCountmax int 0.5 run scoreboard players get red jiangshuzhe_xiuhuai_Kmax

execute as @s[team=red] store result score blue jiangshuzhe_xiuhuai_damage run data get storage temp kardCountmax
execute as @s[team=blue] store result score red jiangshuzhe_xiuhuai_damage run data get storage temp kardCountmax

execute as @s[team=red] run tellraw @a [{text: "预计造成伤害:",color: "gold"},{score:{name:"blue",objective:"jiangshuzhe_xiuhuai_damage"},color:red},{text: "点",color: "gold"}]
execute as @s[team=blue] run tellraw @a [{text: "预计造成伤害:",color: "gold"},{score:{name:"red",objective:"jiangshuzhe_xiuhuai_damage"},color:red},{text: "点",color: "gold"}]

function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/xiuhuai/2

