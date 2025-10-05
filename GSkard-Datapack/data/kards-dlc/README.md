# GSkard-DLC


## 场地marker分布
- tag为 `<team>_marker_<number>`:
   - 比如：red_marker_1、blue_marker_1
```
13  12  11     
    10        
9 8 7 6 5
    4
3   2   1

    0
    
1   2   3      
    4        
5 6 7 8 9
    10
11  12  13
```

## 卡牌

### 基本牌
> 在对方7号点位召唤一只生物

示例：`kards:game/yongpaiku/jiben/diaolingkulou`
``` mcfunction
function kards:game/yongpaiku/use_general/kard_general
    execute if entity @s[team=red] at @e[tag=blue_marker_7,limit=1] run summon wither_skeleton ~ 0 ~ {Team:red,equipment:{mainhand:{id:"minecraft:stone_sword"}},attributes:[{id:"follow_range",base:100}]}
    execute if entity @s[team=blue] at @e[tag=red_marker_7,limit=1] run summon wither_skeleton ~ 0 ~ {Team:blue,equipment:{mainhand:{id:"minecraft:stone_sword"}},attributes:[{id:"follow_range",base:100}]}
function kards:game/yongpaiku/xianjing/jiance/mobjiance
item replace entity @s weapon.offhand with air
scoreboard players operation @s kardCount -= #kard_diaolingkulou kardCount
```
 
