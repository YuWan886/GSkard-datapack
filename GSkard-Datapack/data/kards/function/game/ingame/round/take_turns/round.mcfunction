#回合轮换之前生效
title @a times 0t 70t 20t
team modify blue friendlyFire false
team modify red friendlyFire false
scoreboard players operation time roundtime = #system roundtime
scoreboard players set @a[scores={CanuseKard=1}] lairichanghuan 0
scoreboard players set @a changhuan_times 0
scoreboard players set @a[scores={CanuseKard=0}] use_kard 0
function kards:game/ingame/round/take_turns/kmax
scoreboard players reset 红队_讲述者
scoreboard players reset 蓝队_讲述者
execute if score 红队 xianjin_youdi matches 1 run scoreboard players set 红队 xianjin_youdi 2
execute if score 蓝队 xianjin_youdi matches 1 run scoreboard players set 蓝队 xianjin_youdi 2
#设置天气为晴天
weather clear
#检测pvp
execute if score 回合数 GameRound = #system RoundCount run return run function kards:game/ingame/round/pvpround/waitstart
#回合轮换
scoreboard players add 回合数 GameRound 1
function kards:game/ingame/round/turns/panding
#回合轮换之后生效
#陷阱
function kards:game/yongpaiku/xianjing/jiance/roundjiance
#回合规则
function kards:game/random_start/round_event
#检测回合 事件通知
execute if score 回合数 GameRound = #system RoundCount run tellraw @a [{text: "Final GameRound 最后回合",color:"gold",bold:true}]
execute if score 回合数 GameRound = #system DifficultyRound run tellraw @a [{text: "当前游戏难度：困难",color:"gold",bold:true},{text: "\n怪物造成的伤害提升至1.5倍 玩家受到的部分伤害提升",color:"gold",bold:true}]
execute if score 回合数 GameRound = #system DifficultyRound run difficulty hard
#基础生效
execute as @a[scores={CanuseKard=1}] run scoreboard players operation @s kardCount = @s kardCountmax
function kards:game/ingame/round/take_turns/choupai with storage minecraft:system choupai
#人数补偿
execute if score #system b_number > #system r_number run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 5
execute if score #system b_number > #system r_number run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 1

execute if score #system b_death matches 1 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] kardCount 3
execute if score #system b_death matches 1 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] cishu 1
execute if score #system b_death matches 2 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] kardCount 6
execute if score #system b_death matches 2 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] cishu 2
execute if score #system b_death matches 3 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] kardCount 10
execute if score #system b_death matches 3 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] cishu 3
execute if score #system b_death matches 4 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] kardCount 15
execute if score #system b_death matches 4 run scoreboard players add @a[team=blue,scores={CanuseKard=1}] cishu 4
execute if score #system b_death matches 5.. run scoreboard players add @a[team=blue,scores={CanuseKard=1}] kardCount 20
execute if score #system b_death matches 5.. run scoreboard players add @a[team=blue,scores={CanuseKard=1}] cishu 5

execute if score #system r_death matches 1 run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 3
execute if score #system r_death matches 1 run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 1
execute if score #system r_death matches 2 run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 6
execute if score #system r_death matches 2 run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 2
execute if score #system r_death matches 3 run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 10
execute if score #system r_death matches 3 run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 3
execute if score #system r_death matches 4 run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 15
execute if score #system r_death matches 4 run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 4
execute if score #system r_death matches 5.. run scoreboard players add @a[team=red,scores={CanuseKard=1}] kardCount 20
execute if score #system r_death matches 5.. run scoreboard players add @a[team=red,scores={CanuseKard=1}] cishu 5
#墓园狂欢额外抽卡
scoreboard players add @a[scores={muyuankuanghuan=1,CanuseKard=1}] cishu 2
#超频
scoreboard players remove @a[scores={ChaoPin=1..}] ChaoPin 1
#> buff生效
tellraw @a [{text: "==========事件==========",color:"gray",bold:true}]
#重伤
scoreboard players remove @a[scores={ZhongShang_Round=1..}] ZhongShang_Round 1
execute if entity @a[scores={ZhongShang_Round=1..}] run tellraw @a [{text: "[重伤]",color:"dark_gray",bold:true},{text:"生效至\n",color:"gray"},{selector:"@a[scores={ZhongShang_Round=1..}]",bold:true},{text: "\n他们本回合非瞬间治疗的治疗效果失效",color:"gray",bold:true}]
execute if entity @a[scores={ZhongShang_Round=0}] run tellraw @a [{selector:"@a[scores={ZhongShang_Round=0}]",bold:true},{text: "脱离了",color:"gray",bold:true},{text: "[重伤]",color:"dark_gray",bold:true},{text:"状态",color:"gray"}]
execute if entity @a[scores={ZhongShang_Round=0}] unless entity @a[scores={ZhongShang_Round=1..}] run tellraw @a [{text: "-",color:"gray"}]
execute unless entity @a[scores={ZhongShang_Round=0}] if entity @a[scores={ZhongShang_Round=1..}] run tellraw @a [{text: "-",color:"gray"}]
execute if entity @a[scores={ZhongShang_Round=0}] if entity @a[scores={ZhongShang_Round=1..}] run tellraw @a [{text: "-",color:"gray"}]
#沉默
scoreboard players remove @e[scores={chengmo=1..}] chengmo 1
execute if score @e[tag=r_dw,limit=1] chengmo matches 1.. run tellraw @a [[{text: "红队",color:"red",bold:true},{text: "[沉默]",color:"dark_gray",bold:true},{text: "生效中",color:"dark_gray",bold:true}],{text:"\n持续清除玩家周围掉落物",color:"gold"}]
execute if score @e[tag=b_dw,limit=1] chengmo matches 1.. run tellraw @a [[{text: "蓝队",color:"blue",bold:true},{text: "[沉默]",color:"dark_gray",bold:true},{text: "生效中",color:"dark_gray",bold:true}],{text:"\n持续清除玩家周围掉落物",color:"gold"}]
#狼群战术
execute if entity @a[scores={langqunzhanshu=1..}] run tellraw @a [{text: "[狼群战术]",color:"light_purple",bold:true},{text:"生效至\n",color:"gray"},{selector:"@a[scores={langqunzhanshu=1}]",bold:true},{text: "\n他们本回合不抽卡",color:"gray",bold:true}]
execute if entity @a[scores={langqunzhanshu=1..}] run tellraw @a [{text: "-",color:"gray"}]
scoreboard players set @a[scores={langqunzhanshu=1..}] cishu 0
scoreboard players set @a[scores={langqunzhanshu=1..}] langqunzhanshu 0
#隐匿仓库
execute if entity @a[scores={yinnicangku=1..,CanuseKard=1}] run tellraw @a [{text: "[隐匿仓库]",color:"light_purple",bold:true},{text:"生效至\n",color:"gray"},{selector:"@a[scores={yinnicangku=1,CanuseKard=1}]",bold:true},{text: "\n他们本回合多12K",color:"gray",bold:true}]
execute if entity @e[scores={yinnicangku=1..,CanuseKard=1}] run tellraw @a [{text: "-",color:"gray"}]
scoreboard players add @a[scores={yinnicangku=1,CanuseKard=1}] kardCount 12
scoreboard players set @a[scores={yinnicangku=1,CanuseKard=1}] yinnicangku 0
#生产令
execute if entity @a[scores={shengchanling=1..,CanuseKard=1}] run tellraw @a [{text: "[生产令]",color:"light_purple",bold:true},{text:"生效至\n",color:"gray"},{selector:"@a[scores={shengchanling=1,CanuseKard=1}]",bold:true},{text: "\n他们本回合多2张牌",color:"gray",bold:true}]
execute if entity @e[scores={shengchanling=1..,CanuseKard=1}] run tellraw @a [{text: "-",color:"gray"}]
scoreboard players add @a[scores={shengchanling=1..,CanuseKard=1}] cishu 2
scoreboard players remove @a[scores={shengchanling=1..,CanuseKard=1}] shengchanling 1
#枯竭
scoreboard players remove @a[scores={kujie=1..}] kujie 1

execute if entity @a[team=red,scores={kujie=1..}] run tellraw @a [[{text: "红队",color:"red",bold:true},{text: "[枯竭]",color:"dark_gray",bold:true},{text: "生效中",color:"dark_gray",bold:true}],{text:"\n使用牌后额外扣除1K直至回合结束",color:"gold"}]
execute if entity @a[team=blue,scores={kujie=1..}] run tellraw @a [[{text: "蓝队",color:"blue",bold:true},{text: "[枯竭]",color:"dark_gray",bold:true},{text: "生效中",color:"dark_gray",bold:true}],{text:"\n使用牌后额外扣除1K直至回合结束",color:"gold"}]
execute if entity @a[scores={kujie=1..}] run tellraw @a [{text: "-",color:"gray"}]
#地狱、漫水
execute if score 红队 diyu matches 1 run scoreboard players set 红队 diyu 0
execute if score 蓝队 diyu matches 1 run scoreboard players set 蓝队 diyu 0
execute if score 红队 manshui matches 1 run scoreboard players set 红队 manshui 0
execute if score 蓝队 manshui matches 1 run scoreboard players set 蓝队 manshui 0

#诅咒护甲
execute as @a[tag=zuzhouhujia] if items entity @s armor.chest golden_chestplate[custom_data={kards:'诅咒护甲'}] run item replace entity @s armor.chest with air
tag @a[tag=zuzhouhujia] remove zuzhuanghujia

#马蜂
scoreboard players remove @a[scores={hurt_by_mafeng=1,CanuseKard=1}] kardCount 2
execute if entity @a[scores={hurt_by_mafeng=1,CanuseKard=1}] run tellraw @a [{selector:"@a[scores={hurt_by_mafeng=1,CanuseKard=1}]"},{text:"上回合被马蜂蛰了 -2K",color:"gray"}]
scoreboard players reset @a[scores={hurt_by_mafeng=1,CanuseKard=1}] hurt_by_mafeng

scoreboard players set @a jiben 0
scoreboard players set @a xukonghuixiang 0
function kards:game/ingame/round/skill
function kards:game/ingame/round/tuteng
function kards:game/ingame/round/fashu with storage changdidaxiao
scoreboard players set @a[scores={CanuseKard=0}] kardCount 0

#酸辣无骨鸡爪
execute as @a[gamemode=adventure] store result score @s suanlawugujizhua run clear @s bone[custom_data={kards:'鸡爪'}] 0
execute as @a[gamemode=adventure] if score @s suanlawugujizhua matches 1.. run function kards:game/yongpaiku/fashu/suanlawugujizhua/4

#禁法结界
execute as @a[scores={CanuseKard=1,JinFaJieJie=1}] run function kards:game/yongpaiku/shenji/jinfajiejie/2

#旁观者
scoreboard players set @a[gamemode=spectator] cishu 0
scoreboard players set @a[gamemode=spectator] kardCount 0
scoreboard players set @a[gamemode=spectator] CanuseKard 0
#pvp
execute if score 回合数 GameRound matches 0 run scoreboard players set @a[gamemode=spectator] cishu 0
#tellraw @a [{text: "=======================",color:"gray",bold:true}]