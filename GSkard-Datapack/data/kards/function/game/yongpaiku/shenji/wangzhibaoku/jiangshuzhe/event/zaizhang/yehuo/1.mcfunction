tellraw @a [{text: "《灾章·业火章》",color: "dark_red",bold:true}]
tellraw @a [{text: "\"罪业既定 罚火自生 穷追不舍直至审判终结\"",color: "gray"}]
execute as @s[team=red] run tellraw @a [{text: "在",color: "gold"},{text:"蓝队",color:"blue"},{text: "队伍生成",color: "gold"},{text: "\"业火\"",color: "red"}]
execute as @s[team=blue] run tellraw @a [{text: "在",color: "gold"},{text:"红队",color:"red"},{text: "队伍生成",color: "gold"},{text: "\"业火\"",color: "red"}]
tellraw @a [{text: "业火会朝着生命最高的敌方玩家不断前进 点燃碰撞的敌方玩家并造成伤害\n直至回合结束",color: "gold"}]

execute as @s[team=red] at @e[limit=1,tag=blue_marker_7] positioned ~ 1 ~ summon marker run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/yehuo/summon
execute as @s[team=blue] at @e[limit=1,tag=red_marker_7] positioned ~ 1 ~ summon marker run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/zaizhang/yehuo/summon

execute as @s[team=red] run team join red @n[tag=JiangShuZhe_YeHuo_Start]
execute as @s[team=blue] run team join blue @n[tag=JiangShuZhe_YeHuo_Start]

tag @e[tag=JiangShuZhe_YeHuo_Start] remove JiangShuZhe_YeHuo_Start

