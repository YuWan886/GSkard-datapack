#牌相关
function kards:game/ingame/choupai/cishu
function kards:game/ingame/use_kard/general
#回合计时
execute if score #system GameStatus matches 1 run function kards:game/ingame/round/roundtime
#分数小标题
execute as @a[gamemode=adventure,tag=Ready] if score #system GameStatus matches 1..2 unless items entity @s weapon.mainhand #kards:jinzhanwuqi unless items entity @s weapon.mainhand lantern run title @s actionbar [{text: "K/Kmax  ",color:"dark_green"},{score:{objective:"kardCount",name:"@s"},color:"red"},{text: "/",color: "red"},{score:{objective:"kardCountmax",name:"@s"},color:"red",bold: true}]
#赋值
scoreboard players add @a tanshewubuchong 0
scoreboard players add @a zhunbei 0
scoreboard players add @a newzombie_1 0
scoreboard players add @a newzombie 0
scoreboard players add @a jinfajiejie 0
scoreboard players add @a langqunzhanshu 0
scoreboard players add @a chengmo 0
scoreboard players add @a jinfajiejie 0
scoreboard players add @a touxiang 0
scoreboard players add 红队 touxiang 0
scoreboard players add 蓝队 touxiang 0
scoreboard players add @a xiangxijieshao_1 0
scoreboard players add @a jinzijue 0
scoreboard players add @a kujie 0
scoreboard players add @a changhuan 0
scoreboard players add @a lairichanghuan 0
scoreboard players add @a kardCount 0
scoreboard players add @a changhuan_times 0
scoreboard players set @a[scores={kardCount=..-1}] kardCount 0
scoreboard players add @a jinziqifeng 0

#升级
function kards:game/ingame/shengji/general
#图腾buff
function kards:game/yongpaiku/tuteng/buff
#神器
function kards:game/yongpaiku/shenji/wangzhibaoku/general
#PVP
execute positioned -219 -65 -173 as @a[dx=19,dz=18,dy=2,gamemode=adventure] at @s if data entity @s {OnGround:1b} run function kards:game/ingame/round/pvpround/outworld
execute positioned -219 -65 -173 as @a[dx=19,dz=18,dy=25,gamemode=adventure] run attribute @s minecraft:safe_fall_distance modifier add 0-0-1 100 add_value
execute as @a positioned -219 -65 -173 unless entity @s[dx=19,dz=18,dy=25,gamemode=adventure] run attribute @s minecraft:safe_fall_distance modifier remove 0-0-1
#装备
function kards:game/yongpaiku/zhuangbei/general
#眩晕
scoreboard players remove @a[tag=XuanYun,scores={XuanYun=1..}] XuanYun 1

effect give @a[tag=XuanYun,scores={XuanYun=1..}] slowness 1 100 true
effect give @a[tag=XuanYun,scores={XuanYun=1..}] blindness 2 100 true
execute as @a[tag=XuanYun,scores={XuanYun=1..}] run attribute @s minecraft:jump_strength modifier add 0-0-1 -100 add_value
execute as @a[tag=XuanYun,scores={XuanYun=1..}] run effect clear @s jump_boost
execute as @a[tag=XuanYun,scores={XuanYun=1..}] at @s run tp @s ~ ~ ~ ~ 90
title @a[tag=XuanYun,scores={XuanYun=1..}] times 0t 1s 0t
title @a[tag=XuanYun,scores={XuanYun=1..}] title {text: "眩晕中...",color:"gray",bold:true}
effect clear @a[tag=XuanYun,scores={XuanYun=0}] slowness
effect clear @a[tag=XuanYun,scores={XuanYun=0}] blindness
execute as @a[tag=XuanYun,scores={XuanYun=0}] run attribute @s minecraft:jump_strength modifier remove 0-0-1
title @a[tag=XuanYun,scores={XuanYun=0}] title {text: ""}
tag @a[tag=XuanYun,scores={XuanYun=0}] remove XuanYun
#断腿
scoreboard players remove @a[tag=DuanTui,scores={DuanTui=1..}] DuanTui 1
execute as @a[tag=DuanTui,scores={DuanTui=1..}] run attribute @s minecraft:jump_strength modifier add 0-0-2 -100 add_value
execute as @a[tag=DuanTui,scores={DuanTui=1..}] run effect clear @s jump_boost
execute as @a[tag=DuanTui,scores={DuanTui=0}] run attribute @s minecraft:jump_strength modifier remove 0-0-2
tag @a[tag=DuanTui,scores={DuanTui=0}] remove DuanTui
#不死图腾
function kards:game/yongpaiku/yansheng/totem/general
#监守者bossbar
execute unless entity @e[tag=warden_1] run bossbar set minecraft:warden_1 visible false
execute unless entity @e[tag=warden_2] run bossbar set minecraft:warden_2 visible false
execute unless entity @e[tag=warden_3] run bossbar set minecraft:warden_3 visible false
execute store result bossbar minecraft:warden_1 value run data get entity @e[tag=warden_1,limit=1] Health
execute store result bossbar minecraft:warden_2 value run data get entity @e[tag=warden_2,limit=1] Health
execute store result bossbar minecraft:warden_3 value run data get entity @e[tag=warden_3,limit=1] Health
#虚空回响
execute as @a if score @s jiben matches 1.. if score @s xukonghuixiang matches 1 run scoreboard players add @s cishu 1
execute as @a if score @s jiben matches 1.. if score @s xukonghuixiang matches 1 run scoreboard players remove @s jiben 1
#给苦力怕 末影螨速度1
effect give @e[type=creeper] speed 1 0 true
effect give @e[type=endermite] speed 1 0 true
#墓园狂欢
effect give @e[tag=zombie_enhance_1] minecraft:speed infinite 0 true
effect give @e[tag=zombie_enhance_2] minecraft:speed infinite 1 true
effect give @e[tag=zombie_enhance_3] minecraft:speed infinite 2 true

scoreboard players add @a[scores={muyuankuanghuan=1}] muyuankuanghuan1 0
scoreboard players add @a[scores={muyuankuanghuan=1}] muyuankuanghuan2 0
scoreboard players add @a[scores={muyuankuanghuan=1}] muyuankuanghuan3 0

execute as @a[scores={muyuankuanghuan=1}] store result score @s[scores={muyuankuanghuan1=0}] muyuankuanghuan1 run clear @s minecraft:music_disc_mall
execute as @a[scores={muyuankuanghuan=1}] store result score @s[scores={muyuankuanghuan2=0}] muyuankuanghuan2 run clear @s minecraft:music_disc_stal
execute as @a[scores={muyuankuanghuan=1}] store result score @s[scores={muyuankuanghuan2=0}] muyuankuanghuan2 run clear @s minecraft:music_disc_wait
execute as @a[scores={muyuankuanghuan=1}] store result score @s[scores={muyuankuanghuan3=0}] muyuankuanghuan3 run clear @s minecraft:music_disc_cat

execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan1 matches 1.. run scoreboard players add @s newzombie 1
execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan2 matches 1.. run scoreboard players add @s newzombie 2
execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan3 matches 1.. run scoreboard players add @s newzombie 3

execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan1 matches 1.. run scoreboard players remove @s muyuankuanghuan1 1
execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan2 matches 1.. run scoreboard players remove @s muyuankuanghuan2 1
execute as @a[scores={muyuankuanghuan=1}] if score @s muyuankuanghuan3 matches 1.. run scoreboard players remove @s muyuankuanghuan3 1

execute as @a[scores={muyuankuanghuan=1}] if score @s newzombie matches 1.. run function kards:game/paiku/yansheng/kuanghuanzombie
#来日偿还
execute as @a[scores={changhuan=1,damage_jilu=1..}] run function kards:game/yongpaiku/shenji/lairichanghuan/2
#防止踩田
execute as @a at @s if block ~ ~ ~ minecraft:farmland run effect give @s minecraft:slow_falling 1 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:farmland run effect give @s minecraft:slow_falling 1 0 true
#飞雷神
execute as @a if score @s feileishen matches 1.. run scoreboard players remove @s feileishen 1
execute as @a if score @s feileishen matches 1 run function kards:game/yongpaiku/shenji/feileishen/2
#下界合金套
execute as @a store result score @s chuandai_xjhj if items entity @s armor.* *[minecraft:custom_data={kards:'下界合金护甲'}]
effect give @a[scores={chuandai_xjhj=2}] resistance 1 1 true
effect give @a[scores={chuandai_xjhj=3}] resistance 1 2 true
effect give @a[scores={chuandai_xjhj=4}] resistance 1 3 true
#轻虑浅谋
execute as @a if score @s qinglvqianmou matches 1 if score @s use_kard matches 1.. run damage @s 2 kards:qinglvqianmou
execute as @a if score @s qinglvqianmou matches 1 if score @s use_kard matches 1.. run scoreboard players remove @s use_kard 1
execute as @a if score @s qinglvqianmou matches 1 if score @s use_kard matches 0 run scoreboard players set @s qinglvqianmou 0
#检测旁观玩家高度/限高
execute as @a[gamemode=spectator] if score #system dituxuanze matches 1 positioned -33 0.00 3 if score #system GameStatus matches 1 if entity @s unless entity @s[dz=60,dy=7.2,dx=41] at @s run tp @r[gamemode=adventure]
execute as @a[gamemode=spectator] if score #system dituxuanze matches 2 positioned -188 0.00 4 if score #system GameStatus matches 1 if entity @s unless entity @s[dz=67,dy=7.2,dx=45] at @s run tp @r[gamemode=adventure]
execute as @a[gamemode=spectator] if score #system dituxuanze matches 3 positioned 103 0.00 6 if score #system GameStatus matches 1 if entity @s unless entity @s[dz=52,dy=8.2,dx=24] at @s run tp @r[gamemode=adventure]
execute as @a[gamemode=spectator] if score #system dituxuanze matches 4 positioned -256.00 0.00 5.00 if score #system GameStatus matches 1 if entity @s unless entity @s[dz=65,dy=19,dx=42] at @s run tp @r[gamemode=adventure]
execute as @a[gamemode=spectator] if score #system dituxuanze matches 5 positioned -100.00 0.00 -1.00 if score #system GameStatus matches 1 if entity @s unless entity @s[dz=56,dy=18,dx=35] at @s run tp @r[gamemode=adventure]
execute as @a[gamemode=spectator] if score #system dituxuanze matches 6 positioned 264 -1.00 -378 if score #system GameStatus matches 1 if entity @s unless entity @s[dz=52,dy=64,dx=87] at @s run tp @r[gamemode=adventure]
execute as @a[gamemode=spectator] if score #system dituxuanze matches 7 positioned 179.00 0.0 21.00 if score #system GameStatus matches 1 if entity @s unless entity @s[dz=64,dy=9,dx=45] at @s run tp @r[gamemode=adventure]
execute as @a[gamemode=spectator] if score #system dituxuanze matches 8 positioned 59.00 0.00 104.00 if score #system GameStatus matches 1 if entity @s unless entity @s[dz=54,dy=9,dx=33] at @s run tp @r[gamemode=adventure]

execute as @a[gamemode=spectator] positioned -249.0 -10 -192.0 if score #system GameStatus matches 2 if entity @s unless entity @s[dz=56,dy=60,dx=77] at @s run tp @r[gamemode=adventure]
#沉默
execute if score @e[tag=r_dw,limit=1] chengmo matches 1.. as @a[team=red,gamemode=adventure] at @s run kill @e[type=item,distance=..3,tag=!replace_item,tag=!copy,tag=!copy_end]
execute if score @e[tag=b_dw,limit=1] chengmo matches 1.. as @a[team=blue,gamemode=adventure] at @s run kill @e[type=item,distance=..3,tag=!replace_item,tag=!copy,tag=!copy_end]
#玩家死亡
function kards:game/ingame/death/1
#回血
effect give @a[scores={HealBack=1..}] minecraft:regeneration 1 5 true
effect clear @a[scores={HealBack=0}] regeneration
scoreboard players remove @a[scores={HealBack=1..}] HealBack 1
#禁字诀
effect give @a[scores={jinzijue=1..}] speed 1 0 true
effect give @a[scores={jinzijue=2..}] resistance 1 0 true
effect clear @a[scores={jinzijue=2..}] blindness
effect give @a[scores={jinzijue=3..}] haste 1 2 true
effect give @a[scores={jinzijue=3..}] strength 1 0 true
effect clear @a[scores={jinzijue=3..}] mining_fatigue
effect give @a[scores={jinzijue=4..}] speed 1 1 true
effect give @a[scores={jinzijue=4..}] regeneration infinite 0 true
effect give @a[scores={jinzijue=4..}] strength 1 1 true
effect clear @a[scores={jinzijue=4..}] slowness
effect give @a[scores={jinzijue=5..}] strength 1 2 true
effect give @a[scores={jinzijue=5..}] resistance 1 1 true
effect clear @a[scores={jinzijue=5..}] poison
effect clear @a[scores={jinzijue=5..}] wither
effect give @a[scores={jinzijue=6..}] strength 1 3 true
effect give @a[scores={jinzijue=6..}] resistance 1 2 true
effect give @a[scores={jinzijue=6..}] speed 1 3 true
effect give @a[scores={jinzijue=6..}] regeneration infinite 1 true
effect clear @a[scores={jinzijue=6..}] levitation
effect give @a[scores={jinzijue=7..}] regeneration infinite 2 true
effect give @a[scores={jinzijue=8..}] resistance 1 3 true
effect give @a[scores={jinzijue=10..}] regeneration infinite 4 true
effect give @a[scores={jinzijue=10..}] strength 1 4 true
effect give @a[scores={jinzijue=10..}] speed 1 4 true
effect give @a[scores={jinzijue=10..}] resistance 1 4 true
scoreboard players add @a[scores={jinzijue=6..}] jinzijue_1 1
effect give @a[scores={jinzijue_1=600..}] absorption 30 9 true
scoreboard players set @a[scores={jinzijue_1=600..}] jinzijue_1 0
#禁字启封
execute if entity @a[scores={jinzijue=10}] as @a if items entity @s container.* #creeper_drop_music_discs[minecraft:custom_data={kards:'禁字启封'}] run scoreboard players add @s cishu 1
execute if entity @a[scores={jinzijue=10}] as @a if items entity @s container.* #creeper_drop_music_discs[minecraft:custom_data={kards:'禁字启封'}] run clear @s #creeper_drop_music_discs[minecraft:custom_data={kards:'禁字启封'}]

#音乐盒 春日影
execute at @e[tag=droll] run particle minecraft:note ~0.5 ~ ~ 0.5 0.5 0.5 1 3
execute as @e[tag=droll] if score @s lifetime matches 1.. at @s run tag @e[distance=..13] add droll_music

effect give @e[tag=droll_music,distance=0.1..] weakness 1 255 true
execute as @e[tag=droll_music,distance=0.1..] run attribute @s minecraft:movement_speed modifier add 0-0-2 -100 add_multiplied_total
execute as @e[tag=droll_music,distance=0.1..] run attribute @s minecraft:jump_strength modifier add 0-0-4 -100 add_multiplied_total
execute as @e[tag=droll_music,distance=0.1..,type=!player] run attribute @s minecraft:flying_speed modifier add 0-0-1 -100 add_multiplied_total
execute as @e[tag=droll_music,distance=0.1..] at @s facing entity @n[tag=droll] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[tag=droll_music,distance=0.1..] at @s unless entity @e[tag=droll,distance=..13] run attribute @s minecraft:movement_speed modifier remove 0-0-2
execute as @e[tag=droll_music,distance=0.1..] at @s unless entity @e[tag=droll,distance=..13] run attribute @s minecraft:jump_strength modifier remove 0-0-4
execute as @e[tag=droll_music,distance=0.1..,type=!player] at @s unless entity @e[tag=droll,distance=..13] run attribute @s minecraft:flying_speed modifier remove 0-0-1
execute as @e[tag=droll_music,distance=0.1..] at @s unless entity @e[tag=droll,distance=..13] run tag @s remove droll_music
#存活时长
execute as @e if score @s lifetime matches 1.. run scoreboard players remove @s lifetime 1
execute as @e[tag=droll] if score @s lifetime matches 0 run stopsound @a block minecraft:music_disc.relic
execute as @e[tag=droll] if score @s lifetime matches 0 run kill @s
#清弹射物
kill @e[nbt={Item:{id:"minecraft:arrow"}}]
kill @e[type=minecraft:arrow,nbt={inGround:1b}]
kill @e[type=minecraft:trident,nbt={inGround:1b},nbt=!{item:{components:{"minecraft:custom_data":{kards:"正义长戟"}}}}]
#投降
scoreboard players enable @a[scores={touxiang=0}] touxiang
execute as @a[team=red] if score @s touxiang matches 1.. run function kards:game/ingame/touxiang/r_touxiang
execute as @a[team=blue] if score @s touxiang matches 1.. run function kards:game/ingame/touxiang/b_touxiang
execute store result score 红队 touxiang if entity @a[team=red,tag=TouXiang]
execute store result score 蓝队 touxiang if entity @a[team=blue,tag=TouXiang]
execute store result score 人数 r_p if entity @a[team=red]
execute store result score 人数 b_p if entity @a[team=blue]
execute if score 红队 touxiang = 人数 r_p run gamemode spectator @a[team=red]
execute if score 蓝队 touxiang = 人数 b_p run gamemode spectator @a[team=blue]

#地狱
execute if score 红队 diyu matches 1 run effect give @e[type=!player,team=blue,tag=!tuteng] fire_resistance 1 0 true
execute if score 蓝队 diyu matches 1 run effect give @e[type=!player,team=red,tag=!tuteng] fire_resistance 1 0 true
#reset
scoreboard players enable @a[scores={reset=0}] reset
execute as @a if score @s reset matches 1 run function kards:game/end/reset
#---生物相关---#
#敌对
execute as @e[type=!player,nbt={AngerTime:0}] run data modify entity @s AngerTime set value 99999
#蜜蜂
execute as @e[type=bee] run data modify entity @s HasStung set value 0b
#防止末影人等传送离开
execute if score #system dituxuanze matches 1..100 as @e[team=red,type=minecraft:enderman] at @e[tag=b_dw] positioned ~ -1 ~ unless entity @s[dx=24,dz=24,dy=10] at @e[tag=7r] run tp @s ~ 0 ~
execute if score #system dituxuanze matches 1..100 as @e[team=blue,type=minecraft:enderman] at @e[tag=r_dw] positioned ~ -1 ~ unless entity @s[dx=24,dz=24,dy=10] at @e[tag=7b] run tp @s ~ 0 ~
execute if score #system dituxuanze matches 1..100 as @e[team=red,type=minecraft:shulker,tag=tuteng] at @e[tag=r_ttdw] positioned ~ -1 ~ unless entity @s[dx=4,dz=24,dy=1] at @e[tag=r_tuteng] run tp @s ~ 1 ~
execute if score #system dituxuanze matches 1..100 as @e[team=blue,type=minecraft:shulker,tag=tuteng] at @e[tag=b_ttdw] positioned ~ -1 ~ unless entity @s[dx=4,dz=24,dy=1] at @e[tag=b_tuteng] run tp @s ~ 1 ~

execute if score #system dituxuanze matches 101.. as @e[team=red,type=minecraft:enderman] at @e[tag=b_dw] positioned ~ -1 ~ unless entity @s[dx=34,dz=34,dy=10] at @e[tag=7r] run tp @s ~ 0 ~
execute if score #system dituxuanze matches 101.. as @e[team=blue,type=minecraft:enderman] at @e[tag=r_dw] positioned ~ -1 ~ unless entity @s[dx=34,dz=34,dy=10] at @e[tag=7b] run tp @s ~ 0 ~
execute if score #system dituxuanze matches 101.. as @e[team=red,type=minecraft:shulker,tag=tuteng] at @e[tag=r_ttdw] positioned ~ -1 ~ unless entity @s[dx=4,dz=34,dy=1] at @e[tag=r_tuteng] run tp @s ~ 1 ~
execute if score #system dituxuanze matches 101.. as @e[team=blue,type=minecraft:shulker,tag=tuteng] at @e[tag=b_ttdw] positioned ~ -1 ~ unless entity @s[dx=4,dz=34,dy=1] at @e[tag=b_tuteng] run tp @s ~ 1 ~

#无人机
execute as @e[type=bat,tag=wurenji] at @s unless block ~ ~1.5 ~ air run tp @s ~ ~-1 ~
execute as @e[type=bat,tag=wurenji] at @s unless entity @e[type=shulker,distance=..1] run kill @s
execute as @e[type=bat,tag=wurenji] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[type=shulker,tag=wurenji] at @s unless entity @e[type=bat,distance=..1] run kill @s
#唤魔者、幻术师
execute as @e[type=evoker] store result score @s SpellTicks run data get entity @s SpellTicks
execute as @e[type=illusioner] store result score @s SpellTicks run data get entity @s SpellTicks
execute as @e[type=evoker] if score @s SpellTicks matches 1.. run data modify entity @s SpellTicks set value 0
execute as @e[type=illusioner] if score @s SpellTicks matches 1.. run data modify entity @s SpellTicks set value 0
effect give @e[type=evoker] speed infinite 0 true
effect give @e[type=illusioner] speed infinite 0 true
#山羊
execute as @e[type=goat] store result score @s ram_cooldown_ticks run data get entity @s Brain.memories.minecraft:ram_cooldown_ticks.value
execute as @e[type=goat] if score @s ram_cooldown_ticks matches 2.. run data modify entity @s Brain.memories.minecraft:ram_cooldown_ticks.value set value 1
effect give @e[type=goat] speed infinite 4 true
#死灵巫师
scoreboard players add @e[type=skeleton,tag=silingfashi] silingfashu 1
scoreboard players add @e[type=skeleton,tag=silingfashi] silingzhaohuan 1

#红
execute as @e[type=skeleton,tag=silingfashi,team=red] unless data entity @s NoAI at @s run scoreboard players add @a[team=blue,distance=..3] silingfashu 1
execute as @e[type=skeleton,tag=silingfashi,team=red] if score @s silingfashu matches 40 at @s as @a[team=blue,distance=..3] at @s run damage @s 6 kards:silingfashu by @e[sort=nearest,limit=1,type=minecraft:skeleton,tag=silingfashi,team=red]
execute as @e[type=skeleton,tag=silingfashi,team=red] if score @s silingzhaohuan matches 40 at @s run summon minecraft:skeleton ~ ~ ~ {Team:red,Tags:["死灵仆从"],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"}},attributes:[{id:"follow_range",base:100},{id:"follow_range",base:100},{id:"minecraft:max_health",base:2.0d},{id:"minecraft:attack_damage",base:2.0d},{id:"minecraft:scale",base:0.5d}],Health:2.0f}
execute as @e[tag=silingfashi,type=minecraft:wither_skeleton,team=red] at @s unless entity @e[type=minecraft:skeleton,distance=..2.1,tag=silingfashi] run summon minecraft:skeleton ~ ~-0.5 ~ {Team:red,Tags:["死灵仆从"],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"}},attributes:[{id:"follow_range",base:100},{id:"follow_range",base:100},{id:"minecraft:max_health",base:2.0d},{id:"minecraft:attack_damage",base:2.0d},{id:"minecraft:scale",base:0.5d}],Health:2.0f}
execute as @e[tag=silingfashi,type=minecraft:wither_skeleton,team=red] at @s unless entity @e[type=minecraft:skeleton,distance=..2.1,tag=silingfashi] run summon minecraft:skeleton ~ ~-0.5 ~ {Team:red,Tags:["死灵仆从"],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"}},attributes:[{id:"follow_range",base:100},{id:"follow_range",base:100},{id:"minecraft:max_health",base:2.0d},{id:"minecraft:attack_damage",base:2.0d},{id:"minecraft:scale",base:0.5d}],Health:2.0f}
#蓝
execute as @e[type=skeleton,tag=silingfashi,team=blue] unless data entity @s NoAI at @s run scoreboard players add @a[team=red,distance=..3] silingfashu 1
execute as @e[type=skeleton,tag=silingfashi,team=blue] if score @s silingfash matches 40 at @s as @a[team=red,distance=..5] at @s run damage @s 6 kards:silingfashu by @e[sort=nearest,limit=1,type=minecraft:skeleton,tag=silingfashi,team=blue]
execute as @e[type=skeleton,tag=silingfashi,team=blue] if score @s silingzhaohuan matches 40 at @s run summon minecraft:skeleton ~ ~ ~ {Team:blue,Tags:["死灵仆从"],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"}},attributes:[{id:"follow_range",base:100},{id:"follow_range",base:100},{id:"minecraft:max_health",base:2.0d},{id:"minecraft:attack_damage",base:2.0d},{id:"minecraft:scale",base:0.5d}],Health:2.0f}
execute as @e[tag=silingfashi,type=minecraft:wither_skeleton,team=blue] at @s unless entity @e[type=minecraft:skeleton,distance=..2.1,tag=silingfashi] run summon minecraft:skeleton ~ ~-0.5 ~ {Team:blue,Tags:["死灵仆从"],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"}},attributes:[{id:"follow_range",base:100},{id:"follow_range",base:100},{id:"minecraft:max_health",base:2.0d},{id:"minecraft:attack_damage",base:2.0d},{id:"minecraft:scale",base:0.5d}],Health:2.0f}
execute as @e[tag=silingfashi,type=minecraft:wither_skeleton,team=blue] at @s unless entity @e[type=minecraft:skeleton,distance=..2.1,tag=silingfashi] run summon minecraft:skeleton ~ ~-0.5 ~ {Team:blue,Tags:["死灵仆从"],active_effects:[{id:"speed",show_particles:0b,duration:-1}],equipment:{head:{id:"minecraft:leather_helmet"}},attributes:[{id:"follow_range",base:100},{id:"follow_range",base:100},{id:"minecraft:max_health",base:2.0d},{id:"minecraft:attack_damage",base:2.0d},{id:"minecraft:scale",base:0.5d}],Health:2.0f}

execute as @e[type=skeleton,tag=silingfashi] if score @s silingfashu matches 40.. at @s run particle enchanted_hit ~ ~ ~ 3 0.1 3 0 100 force
execute as @e[tag=silingfashi,type=minecraft:wither_skeleton] at @s unless entity @e[type=skeleton,distance=..2.1,tag=silingfashi] run kill @s
scoreboard players set @e[type=skeleton,tag=silingfashi,scores={silingfashu=40..}] silingfashu 0
scoreboard players set @e[type=skeleton,tag=silingfashi,scores={silingzhaohuan=40..}] silingzhaohuan 0
effect give @e[nbt={Tags:["死灵仆从"]}] minecraft:speed infinite 1 true
#监守者
execute if score 人数 b_alive matches 5.. run effect give @e[type=warden] speed 1 0 true
execute if score 人数 r_alive matches 5.. run effect give @e[type=warden] speed 1 0 true
#舞王僵尸
execute as @e[type=zombie,tag=wuwangjiangshi] if score @s wuwangchuchang matches 1.. run scoreboard players remove @s wuwangchuchang 1
execute as @e if score @s wait_spawn matches 1.. run scoreboard players remove @s wait_spawn 1
execute as @e if score @s in_wuwangjiangshi matches 1.. run scoreboard players remove @s in_wuwangjiangshi 1
scoreboard players add @e in_wuwangjiangshi 0
execute as @e if score @s wait_spawn matches 1 run function kards:game/yongpaiku/juntuan/wuwangjiangshi/5

execute as @e[type=zombie,tag=wuwangjiangshi] if score @s wuwangchuchang matches 1 run function kards:game/yongpaiku/juntuan/wuwangjiangshi/3
#红
execute as @e[type=zombie,tag=wuwangjiangshi,team=red] if entity @e[type=zombie,tag=wubanjiangshi,team=red] run effect give @s resistance 1 2 true
execute as @e[type=zombie,tag=wuwangjiangshi,team=red] at @s run effect give @e[distance=..5,team=red] speed 1 0 true
execute as @e[team=red] at @s if entity @e[type=zombie,tag=wuwangjiangshi,team=red,distance=..5] if score @s in_wuwangjiangshi matches 0 run effect give @s regeneration 5 0 true
execute as @e[team=red] at @s if entity @e[type=zombie,tag=wuwangjiangshi,team=red,distance=..5] if score @s in_wuwangjiangshi matches 0 run scoreboard players set @s in_wuwangjiangshi 100
#蓝
execute as @e[type=zombie,tag=wuwangjiangshi,team=blue] if entity @e[type=zombie,tag=wubanjiangshi,team=blue] run effect give @s resistance 1 2 true
execute as @e[type=zombie,tag=wuwangjiangshi,team=blue] at @s run effect give @e[distance=..5,team=blue] speed 1 0 true
execute as @e[team=blue] at @s if entity @e[type=zombie,tag=wuwangjiangshi,team=blue,distance=..5] if score @s in_wuwangjiangshi matches 0 run effect give @s regeneration 5 0 true
execute as @e[team=blue] at @s if entity @e[type=zombie,tag=wuwangjiangshi,team=blue,distance=..5] if score @s in_wuwangjiangshi matches 0 run scoreboard players set @s in_wuwangjiangshi 100
#三人成众
scoreboard players add @e[tag=large_slime] sanrenchengzhong 1
execute as @e[tag=large_slime] if score @s sanrenchengzhong matches 300 run function kards:game/yongpaiku/juntuan/sanrenchengzhong/2