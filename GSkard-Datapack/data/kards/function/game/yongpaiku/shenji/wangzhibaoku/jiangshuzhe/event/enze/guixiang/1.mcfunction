tellraw @a [{text: "《恩泽·归乡章》",color: "green",bold:true}]
tellraw @a [{text: "\"远征的英魂听见了故乡的召唤 踏上归途\"",color: "gray"}]
execute as @s[team=red] run tellraw @a [{text: "仅一次 ",color: "gold"},{text:"蓝队",color:"blue"},{text: "怪物立刻化作对应生物种类的",color: "gold"},{text: "[基础牌]",color: "blue"},{text: " 若可能",color: "gold"}]
execute as @s[team=blue] run tellraw @a [{text: "仅一次 ",color: "gold"},{text:"红队",color:"red"},{text: "怪物立刻化作对应生物种类的",color: "gold"},{text: "[基础牌]",color: "blue"},{text: " 若可能",color: "gold"}]

execute as @s[team=red] as @e[team=blue,type=#kards:mob,tag=!tuteng] at @s if function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/guixiang/2 run tag @s add JiangShuZhe_Guixiang
execute as @s[team=blue] as @e[team=red,type=#kards:mob,tag=!tuteng] at @s if function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/enze/guixiang/2 run tag @s add JiangShuZhe_Guixiang

tp @e[tag=JiangShuZhe] 0 0 0