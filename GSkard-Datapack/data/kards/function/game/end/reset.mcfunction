#赛后统计
scoreboard players set system tongji_damage_huansuan 20
scoreboard players set system tongji_hurt_huansuan 20
scoreboard players set system tongji_killed_huansuan 1
execute as @a[tag=Ready] run scoreboard players operation @s tongji_damage /= system tongji_damage_huansuan
execute as @a[tag=Ready] run scoreboard players operation @s tongji_hurt /= system tongji_hurt_huansuan
scoreboard players operation system tongji_damage > * tongji_damage
scoreboard players operation system tongji_killed > * tongji_killed
scoreboard players operation system tongji_hurt > * tongji_hurt
execute as @a if score @s tongji_damage = system tongji_damage run tag @s add DamageMAX
execute as @a if score @s tongji_killed = system tongji_killed run tag @s add KillMAX
execute as @a if score @s tongji_hurt = system tongji_hurt run tag @s add HurtMAX
tellraw @a [{translate: "game.end.reset.1",color:"green"},{selector:"@a[tag=DamageMAX]",bold:true},{translate: "game.end.reset.2",color:"green"},{score:{objective:"tongji_damage",name:"system"}},{translate: "game.end.reset.3",color:"red"},{translate: "game.end.reset.4",color:"green"}]
tellraw @a [{translate: "game.end.reset.5",color:"green"},{selector:"@a[tag=HurtMAX]",bold:true},{translate: "game.end.reset.6",color:"green"},{score:{objective:"tongji_hurt",name:"system"}},{translate: "game.end.reset.3",color:"red"},{translate: "game.end.reset.4",color:"green"}]
tellraw @a [{translate: "game.end.reset.7",color:"green"},{selector:"@a[tag=KillMAX]",bold:true},{translate: "game.end.reset.8",color:"green"},{score:{objective:"tongji_killed",name:"system"}},{translate: "game.end.reset.9",color:"red"},{translate: "game.end.reset.10",color:"green"}]
tag @a[tag=DamageMAX] remove DamageMAX
tag @a[tag=KillMAX] remove KillMAX
tag @a[tag=InfectMAX] remove InfectMAX
tag @a[tag=HurtMAX] remove HurtMAX
tag @a[tag=AllMAX] remove AllMAX
scoreboard players reset * tongji_damage
scoreboard players reset * tongji_killed
scoreboard players reset * tongji_hurt
#重置边界
bossbar set minecraft:worldborder visible false
worldborder set 59999968
scoreboard players set system worldborder -1
#重置陷阱
function kards:game/yongpaiku/xianjin/reset
#设置游戏状态为0(关闭)
scoreboard players set system GameStatus 0
#重置回合数
scoreboard players reset 回合数
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
#设置天气为晴天
weather clear
#清空效果
effect clear @a
#清空背包
clear @a
#隐藏倒计时
bossbar set minecraft:roundtime visible false
bossbar set pvptime visible false
#改模式
gamemode adventure @a
#时间
time set day
#清队伍
team empty blue
team empty red
team join lobby @a
#重生点
spawnpoint @a 59 226 -26 -90
#设置难度为和平
difficulty peaceful
#清生物
kill @e[type=!player,type=!armor_stand,type=!#kards:display]
#tp回大厅
tp @a 59 226 -26 -90 0
#清tag
tag @a remove Ready
tag @a add Un_Ready
tag @a remove jishengnianye
tag @a remove TouXiang
#重置属性
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-1
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-2
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-3
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-4
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-5
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-6
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-7
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-8
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-9
execute as @a run attribute @s minecraft:max_health modifier remove 0-0-10
execute as @a run attribute @s minecraft:max_health base set 20
execute as @a run attribute @s minecraft:jump_strength modifier remove 0-0-1
execute as @a run attribute @s minecraft:jump_strength modifier remove 0-0-2
execute as @a run attribute @s minecraft:jump_strength modifier remove 0-0-3
execute as @a run attribute @s minecraft:jump_strength base set 0.42
execute as @a run attribute @s minecraft:scale base set 1
#重置分数
scoreboard players set * zhengyizhichui_1 0
scoreboard players set * sishenzhilian 0
scoreboard players set * yanhua 0
scoreboard players set * yanhuanu 0
scoreboard players set * jinzijue 0
scoreboard players set * lairichanghuan 0
scoreboard players set * changhuan 0
scoreboard players set * shengji_mujian 0
scoreboard players set * shengji_jinjian 0
scoreboard players set * shengji_tiejian 0
scoreboard players set * shengji_zuanshijian 0
scoreboard players set * shengji_xiajiehejinjian 0
scoreboard players set 人数 r_touxiang 0
scoreboard players set 人数 b_touxiang 0
scoreboard players reset 红队_讲述者
scoreboard players reset 蓝队_讲述者
scoreboard players reset @a
scoreboard players reset * r_death
scoreboard players reset * b_death
scoreboard players reset * r_number
scoreboard players reset * b_number
#计划
schedule clear kards:game/ingame/GameRound/pvpround/countdown
#停止音乐
execute as @a at @s run stopsound @s
#概率生成oiiao
execute if predicate kards:random0.01 run summon minecraft:cat 70 227 -20 {NoAI:1b,Invulnerable:1b,variant:"minecraft:all_black",CustomName:"Oiiaioiiiiai",Silent:1b}
#生成琉璃夜
summon minecraft:pig 62 226 -26 {AbsorptionAmount:0.0f,Age:0,Air:300s,ArmorDropChances:[0.085f,0.085f,0.085f,0.085f],ArmorItems:[{},{},{},{}],Attributes:[{Base:16.0d,Modifiers:[{Amount:0.025476123670384238d,Name:"Random spawn bonus",Operation:1,UUID:[I;-1098363419,-483572789,-2135863190,-66422552]}],Name:"minecraft:follow_range"},{Base:0.0d,Name:"forge:step_height_addition"},{Base:0.08d,Name:"forge:entity_gravity"},{Base:0.25d,Name:"minecraft:movement_speed"}],Brain:{memories:{}},CanPickUpLoot:0b,CanUpdate:1b,CustomName:{translate: "game.end.reset.11","extra":["",{translate: "game.end.reset.12",color:"gold",bold:true}]},CustomNameVisible:1b,DeathTime:0s,FallDistance:0.0f,FallFlying:0b,Fire:-1s,ForcedAge:0,HandDropChances:[0.085f,0.085f],HandItems:[{},{}],Health:10.0f,HurtByTimestamp:0,HurtTime:0s,InLove:0,Invulnerable:0b,LeftHanded:0b,Motion:[-0.05681209878307869d,-0.0784000015258789d,0.04549847833052194d],OnGround:1b,PersistenceRequired:0b,PortalCooldown:0,Saddle:0b,Tags:["pig"],"forge:spawn_type":"SPAWN_EGG",id:"minecraft:pig"}

