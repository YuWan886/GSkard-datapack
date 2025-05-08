#森林之护
execute as @a if items entity @s armor.chest *[custom_data={kards:'森林之护'}] run tag @s add senlinzhihu
effect give @a[tag=senlinzhihu] minecraft:regeneration infinite 0 true
scoreboard players add @a[tag=senlinzhihu] senlinzhihu 1
execute as @a[tag=senlinzhihu] if score @s senlinzhihu matches 1200.. run effect give @s absorption 60 4 true
execute as @a[tag=senlinzhihu] if score @s senlinzhihu matches 1200.. run scoreboard players set @s senlinzhihu 0
execute as @a[tag=senlinzhihu] unless items entity @s armor.chest *[custom_data={kards:'森林之护'}] run effect clear @s regeneration
execute as @a[tag=senlinzhihu] unless items entity @s armor.chest *[custom_data={kards:'森林之护'}] run tag @s remove senlinzhihu
#天神石板甲
execute as @a if items entity @s armor.chest *[custom_data={kards:'天神石板甲'}] run tag @s add tianshenshibanjia
scoreboard players add @a[tag=tianshenshibanjia] damage_tianshenshibanjia 1
execute as @a[team=red,tag=tianshenshibanjia] if score @s damage_tianshenshibanjia matches 30 at @s as @e[team=blue,distance=..5] run damage @s 6 kards:tianshenshibanjia by @p[team=red,tag=tianshenshibanjia]
execute as @a[team=blue,tag=tianshenshibanjia] if score @s damage_tianshenshibanjia matches 30 at @s as @e[team=red,distance=..5] run damage @s 6 kards:tianshenshibanjia by @p[team=blue,tag=tianshenshibanjia]
execute as @a[tag=tianshenshibanjia] if score @s damage_tianshenshibanjia matches 30.. run scoreboard players set @s damage_tianshenshibanjia 0

execute as @a[tag=tianshenshibanjia] run attribute @s minecraft:entity_interaction_range modifier add 0-0-1 -3 add_value
execute as @a[tag=tianshenshibanjia] unless items entity @s armor.chest *[custom_data={kards:'天神石板甲'}] run attribute @s minecraft:entity_interaction_range modifier remove 0-0-1 
execute as @a[tag=tianshenshibanjia] unless items entity @s armor.chest *[custom_data={kards:'天神石板甲'}] run tag @s remove tianshenshibanjia
#凛冬之铠
execute as @a if items entity @s armor.chest *[custom_data={kards:'凛冬之铠'}] run tag @s add lindongzhikai
execute as @a[team=red,tag=lindongzhikai] at @s run scoreboard players add @e[team=blue,distance=..4] in_lindongzhikai 1
execute as @a[team=red,tag=lindongzhikai] at @s run scoreboard players set @e[team=blue,distance=..4] leave_lindongzhikai 160
execute as @a[team=blue,tag=lindongzhikai] at @s run scoreboard players add @e[team=red,distance=..4] in_lindongzhikai 1
execute as @a[team=blue,tag=lindongzhikai] at @s run scoreboard players set @e[team=red,distance=..4] leave_lindongzhikai 160
execute as @e if score @s leave_lindongzhikai matches 1.. run scoreboard players remove @s leave_lindongzhikai 1
execute as @e if score @s leave_lindongzhikai matches 0 run scoreboard players set @s in_lindongzhikai 0
execute as @e if score @s in_lindongzhikai matches 160 run scoreboard players set @s DongJie 60
execute as @e if score @s in_lindongzhikai matches 160 run tag @s add DongJie
execute as @e if score @s in_lindongzhikai matches 160 at @s run playsound minecraft:entity.player.hurt_freeze player @s ~ ~ ~ 100 0
execute as @e if score @s in_lindongzhikai matches 160 run scoreboard players set @s in_lindongzhikai 0

execute as @a if score @s stophurt_lindongzhikai matches 1.. run scoreboard players remove @s stophurt_lindongzhikai 1
execute as @a if score @s stophurt_lindongzhikai matches 0 run scoreboard players set @s hurt_lindongzhikai 0

execute as @a if score @s hurt_lindongzhikai matches 5 run scoreboard players set @s DongJie 30
execute as @a if score @s hurt_lindongzhikai matches 5 run tag @s add DongJie
execute as @a if score @s hurt_lindongzhikai matches 5 at @s run playsound minecraft:entity.player.hurt_freeze player @s ~ ~ ~ 100 0
execute as @a if score @s hurt_lindongzhikai matches 5 run scoreboard players set @s hurt_lindongzhikai 0

execute as @a[tag=lindongzhikai] unless items entity @s armor.chest *[custom_data={kards:'凛冬之铠'}] run tag @s remove lindongzhikai
#苦难摇篮
execute as @a if items entity @s armor.chest *[custom_data={kards:'苦难摇篮'}] run tag @s add kunanyaolan
execute as @a[team=red,tag=kunanyaolan] if score @s behurt_kunanyaolan1 matches 200.. as @r[team=blue] run damage @s 16 kards:kunanyaolan by @p[team=red,tag=kunanyaolan,scores={behurt_kunanyaolan1=200..}]
execute as @a[team=blue,tag=kunanyaolan] if score @s behurt_kunanyaolan1 matches 200.. as @r[team=red] run damage @s 16 kards:kunanyaolan by @p[team=blue,tag=kunanyaolan,scores={behurt_kunanyaolan1=200..}]
execute as @a[tag=kunanyaolan] if score @s behurt_kunanyaolan1 matches 200.. run scoreboard players remove @s behurt_kunanyaolan1 200

scoreboard players add @a[tag=kunanyaolan] healback_kunanyaolan 1
scoreboard players set system healback_kunanyaolan 4
scoreboard players set system healback_kunanyaolan2 100
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 run scoreboard players operation @s healback_kunanyaolan2 = @s behurt_kunanyaolan2
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 run scoreboard players set @s behurt_kunanyaolan2 0
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 run scoreboard players operation @s healback_kunanyaolan2 *= system healback_kunanyaolan
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 run scoreboard players operation @s healback_kunanyaolan2 /= system healback_kunanyaolan2
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 run tellraw @s [{translate: "game.yongpaiku.shenji.wangzhibaoku.general.1",color:"red"},{translate: "game.yongpaiku.shenji.wangzhibaoku.general.2",color:"green"}]
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 100 0
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600.. run scoreboard players set @s healback_kunanyaolan 0


effect give @a[tag=kunanyaolan,scores={healback_kunanyaolan2=1..}] minecraft:regeneration 1 5 true
effect clear @a[tag=kunanyaolan,scores={healback_kunanyaolan2=0}] regeneration
scoreboard players remove @a[tag=kunanyaolan,scores={healback_kunanyaolan2=0..}] healback_kunanyaolan2 1

execute as @a[tag=kunanyaolan] unless items entity @s armor.chest *[custom_data={kards:'苦难摇篮'}] run tag @s remove kunanyaolan
scoreboard players set @a[tag=!kunanyaolan] behurt_kunanyaolan1 0
scoreboard players set @a[tag=!kunanyaolan] behurt_kunanyaolan2 0
#净化水晶
execute as @a if items entity @s container.* *[custom_data={kards:'净化水晶'}] run tag @s add jinghuashuijing
effect clear @a[tag=jinghuashuijing] slowness
effect clear @a[tag=jinghuashuijing] mining_fatigue
effect clear @a[tag=jinghuashuijing] blindness
effect clear @a[tag=jinghuashuijing] weakness
effect clear @a[tag=jinghuashuijing] poison
effect clear @a[tag=jinghuashuijing] wither
effect clear @a[tag=jinghuashuijing] levitation
effect clear @a[tag=jinghuashuijing] darkness
execute as @a[team=red,tag=jinghuashuijing] at @s run effect give @e[team=blue,distance=..4] slowness 3 2 true
execute as @a[team=blue,tag=jinghuashuijing] at @s run effect give @e[team=red,distance=..4] slowness 3 2 true

scoreboard players add @a[tag=jinghuashuijing] jinghuashuijing 1
execute as @a[tag=jinghuashuijing] if score @s jinghuashuijing matches 1200.. run effect give @s absorption 60 4 true
execute as @a[tag=jinghuashuijing] if score @s jinghuashuijing matches 1200.. run scoreboard players set @s jinghuashuijing 0
execute as @a[tag=jinghuashuijing] unless items entity @s container.* *[custom_data={kards:'净化水晶'}] run tag @s remove jinghuashuijing
#飞升护符
execute as @a if items entity @s container.* *[custom_data={kards:'飞升护符'}] run tag @s add feishenhufu
execute as @a[tag=feishenhufu] run attribute @s minecraft:max_health modifier add 0-0-11 20 add_value
execute if score 回合数 round matches 17.. run effect give @a[tag=feishenhufu] strength infinite 3 true
execute if score 回合数 round matches 0 run effect give @a[tag=feishenhufu] strength infinite 3 true
execute as @a[tag=feishenhufu] unless items entity @s container.* *[custom_data={kards:'飞升护符'}] run attribute @s minecraft:max_health modifier remove 0-0-11
execute as @a[tag=feishenhufu] unless items entity @s container.* *[custom_data={kards:'飞升护符'}] run effect clear @s strength
execute as @a[tag=feishenhufu] unless items entity @s container.* *[custom_data={kards:'飞升护符'}] run tag @s remove feishenhufu
#讲述者
execute as @a if items entity @s container.* *[custom_data={kards:'讲述者'}] run tag @s add jiangshuzhe
execute if entity @a[tag=jiangshuzhe] run function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/general
execute as @a[tag=jiangshuzhe] unless items entity @s container.* *[custom_data={kards:'讲述者'}] run tag @s remove jiangshuzhe
#寄生粘液
execute as @a[tag=jishengnianye] run scoreboard players set @s jinzijue 0
execute as @a[tag=jishengnianye] run attribute @s max_health base set 200
execute as @a[tag=jishengnianye] if score @s health matches 101.. run effect give @s strength 1 4 true
execute as @a[tag=jishengnianye] if score @s health matches 101.. run effect give @s wither 1 1 true
execute as @a[tag=jishengnianye] if score @s health matches 30..100 run effect give @s strength 1 3 true
execute as @a[tag=jishengnianye] if score @s health matches 30..100 run effect give @s resistance 1 0 true
execute as @a[tag=jishengnianye] if score @s health matches 30..100 run effect give @s slowness 1 1 true
execute as @a[tag=jishengnianye] if score @s health matches 30.. run effect clear @s regeneration
execute as @a[tag=jishengnianye] if score @s health matches ..29 run effect give @s minecraft:regeneration infinite 2 true
execute as @a[tag=jishengnianye] if score @s health matches ..29 run effect give @s minecraft:speed 1 1 true
execute as @a[tag=jishengnianye] if score @s health matches ..29 run attribute @s minecraft:entity_interaction_range modifier add 0-0-2 -3 add_value
execute as @a[tag=jishengnianye] unless score @s health matches ..29 run attribute @s minecraft:entity_interaction_range modifier remove 0-0-2
execute as @a[tag=jishengnianye] if score @s death matches 1.. run attribute @s max_health base set 20
execute as @a[tag=jishengnianye] if score @s death matches 1.. run tag @s remove jishengnianye
#无休之火
execute as @a if items entity @s container.* *[custom_data={kards:'无休之火'}] run tag @s add wuxiuzhihuo
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_jiben 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_juntuan 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_fashu 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_zuzhou 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_zhuangbei 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_xianjing 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_tuteng 0
scoreboard players set @a[tag=!wuxiuzhihuo] wuxiuzhihuo_shenji 0

execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_jiben 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_juntuan 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_fashu 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_zuzhou 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_zhuangbei 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_xianjing 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_tuteng 0
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 0 run scoreboard players set @s wuxiuzhihuo_shenji 0

execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_jiben matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/jiben
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_juntuan matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/juntuan
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_fashu matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/fashu
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_zuzhou matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/zuzhou
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_zhuangbei matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/zhuangbei
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_xianjing matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/xianjing
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_tuteng matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/tuteng
execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_rongzhu matches 1 if score @s wuxiuzhihuo_shenji matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/rongzhu/shenji

execute as @a[tag=wuxiuzhihuo] if score @s wuxiuzhihuo_throw matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/wuxiuzhihuo/throw

execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 1..45 run title @s actionbar [{translate: "game.yongpaiku.shenji.wangzhibaoku.general.3",color:"aqua"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 46..90 run title @s actionbar [{translate: "game.yongpaiku.shenji.wangzhibaoku.general.4",color:"blue"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 91..135 run title @s actionbar [{translate: "game.yongpaiku.shenji.wangzhibaoku.general.5",color:"yellow"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 136..180 run title @s actionbar [{translate: "game.yongpaiku.shenji.wangzhibaoku.general.6",color:"gold"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 181..350 run title @s actionbar [{translate: "game.yongpaiku.shenji.wangzhibaoku.general.7",color:"red"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 351.. run title @s actionbar [{translate: "game.yongpaiku.shenji.wangzhibaoku.general.8",color:"dark_red"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]

execute as @a if items entity @s weapon.offhand lantern[custom_data={kards:'无休之火'}] run tag @s add fire
execute as @a if items entity @s weapon.offhand lantern[custom_data={kards:'无休之火'}] run scoreboard players set @s fire 295

execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}]

execute as @a[tag=wuxiuzhihuo] unless items entity @s container.* *[custom_data={kards:'无休之火'}] run scoreboard players set @s wuxiuzhihuo_shengji 0
execute as @a[tag=wuxiuzhihuo] unless items entity @s container.* *[custom_data={kards:'无休之火'}] run scoreboard players set @s wuxiuzhihuo 0
execute as @a[tag=wuxiuzhihuo] unless items entity @s container.* *[custom_data={kards:'无休之火'}] run tag @s remove wuxiuzhihuo
#石中剑
execute as @a if items entity @s weapon.mainhand *[custom_data={kards:'石中剑'}] run tag @s add shizhongjian
effect give @a[tag=shizhongjian] strength infinite 1 true
execute as @a[tag=shizhongjian] unless items entity @s weapon.mainhand *[custom_data={kards:'石中剑'}] run effect clear @s strength
execute as @a[tag=shizhongjian] unless items entity @s weapon.mainhand *[custom_data={kards:'石中剑'}] run tag @s remove shizhongjian
#正义之锤
execute as @a if items entity @s container.* *[custom_data={kards:'正义之锤'}] run tag @s add zhengyizhichui
execute as @a[tag=zhengyizhichui] if score @s used_zhengyizhichui matches 1.. run function kards:game/yongpaiku/shenji/wangzhibaoku/zhengyizhichui/1
execute as @a[tag=zhengyizhichui] unless items entity @s container.* *[custom_data={kards:'正义之锤'}] run tag @s remove zhengyizhichui
#死神之镰
execute as @a if items entity @s weapon.mainhand *[custom_data={kards:'死神之镰'}] run tag @s add sishenzhilian
scoreboard players set @a[tag=!sishenzhilian] sishenzhilian_damage 0
execute as @a[tag=sishenzhilian] run scoreboard players operation @s sishenzhilian_damage_tongji += @s sishenzhilian_damage
execute as @a[tag=sishenzhilian] if score @s used_sishenzhilian matches 1.. run scoreboard players set @s sishenzhilian_damage 0
execute as @a[tag=sishenzhilian] if score @s used_sishenzhilian matches 1.. run scoreboard players set @s used_sishenzhilian 0
execute as @a[tag=sishenzhilian] if score @s sishenzhilian_damage_tongji matches 600.. run effect give @s instant_health 1 1 true
execute as @a[tag=sishenzhilian] if score @s sishenzhilian_damage_tongji matches 600.. run tellraw @s [{translate: "game.yongpaiku.shenji.wangzhibaoku.general.9",color:"red"},{translate: "game.yongpaiku.shenji.wangzhibaoku.general.10",color:"green"}]
execute as @a[tag=sishenzhilian] if score @s sishenzhilian_damage_tongji matches 600.. run scoreboard players remove @s sishenzhilian_damage_tongji 600
execute as @a[tag=sishenzhilian] unless items entity @s weapon.mainhand *[custom_data={kards:'死神之镰'}] run tag @s remove sishenzhilian
execute as @a store result score @s sishenzhilian_soul_small run clear @s *[minecraft:custom_data={kards:'灵魂_小'}] 0
execute as @a store result score @s sishenzhilian_soul_medium run clear @s *[minecraft:custom_data={kards:'灵魂_中'}] 0
execute as @a if score @s sishenzhilian_soul_small matches 10.. run function kards:game/yongpaiku/shenji/wangzhibaoku/sishenzhilian/3
execute as @a if score @s sishenzhilian_soul_medium matches 10.. run function kards:game/yongpaiku/shenji/wangzhibaoku/sishenzhilian/4
#正义长戟
execute as @a if items entity @s weapon.mainhand *[custom_data={kards:'正义长戟'}] run tag @s add zhengyichangji
execute as @a[tag=zhengyichangji] unless items entity @s weapon.mainhand *[custom_data={kards:'正义长戟'}] run tag @s remove zhengyichangji

execute as @a[tag=used_zhengyichangji] run scoreboard players set @s used_zhengyichangji 100
execute as @a[tag=used_zhengyichangji] run tag @s remove used_zhengyichangji
scoreboard players add @a used_zhengyichangji 0
execute as @a if score @s used_zhengyichangji matches 1 run tellraw @s [{translate: "game.yongpaiku.shenji.wangzhibaoku.general.11",color:"aqua"},{translate: "game.yongpaiku.shenji.wangzhibaoku.general.12",color:"green"}]
execute as @a if score @s used_zhengyichangji matches 1 at @s run playsound minecraft:item.trident.riptide_1 player @s ~ ~ ~ 100 2
execute as @a if score @s used_zhengyichangji matches 1.. run scoreboard players remove @s used_zhengyichangji 1
#轻灵之语
execute as @a if items entity @s weapon.* *[custom_data={kards:'轻灵之语'}] run tag @s add qinglingzhiyu
execute as @a if items entity @s container.* *[custom_data={kards:'轻灵之语'}] run tag @s add qinglingzhiyu_skill
execute as @a if items entity @s weapon.* *[custom_data={kards:'轻灵之语'}] run tag @s add qinglingzhiyu_skill
execute as @a[tag=qinglingzhiyu_skill] if score @s jitui_qinglingzhiyu matches 1 run tellraw @s [{translate: "game.yongpaiku.shenji.wangzhibaoku.general.13",color:"aqua"},{translate: "game.yongpaiku.shenji.wangzhibaoku.general.14",color:"green"}]
execute as @a[tag=qinglingzhiyu_skill] if score @s jitui_qinglingzhiyu matches 1 at @s run playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 100 2
execute as @a[tag=qinglingzhiyu_skill] if score @s jitui_qinglingzhiyu matches 0 run attribute @s attack_knockback modifier add 0-0-1 5 add_value
execute as @a[tag=qinglingzhiyu_skill] if score @s jitui_qinglingzhiyu matches 1.. run attribute @s attack_knockback modifier remove 0-0-1
execute as @a[tag=qinglingzhiyu_skill] if score @s jitui_qinglingzhiyu matches 1.. run scoreboard players remove @s jitui_qinglingzhiyu 1
scoreboard players add @a[tag=qinglingzhiyu_skill] jitui_qinglingzhiyu 0
scoreboard players add @a right_used_qinglingzhiyu 0
execute as @a[tag=qinglingzhiyu] run attribute @s minecraft:movement_speed modifier add 0-0-1 0.35 add_multiplied_base

execute as @a unless items entity @s weapon.* *[custom_data={kards:'轻灵之语'}] run attribute @s attack_knockback modifier remove 0-0-1
execute as @a unless items entity @s weapon.* *[custom_data={kards:'轻灵之语'}] run attribute @s movement_speed modifier remove 0-0-1

execute as @a[tag=qinglingzhiyu] unless items entity @s weapon.* *[custom_data={kards:'轻灵之语'}] run tag @s remove qinglingzhiyu
execute as @a unless items entity @s weapon.* *[custom_data={kards:'轻灵之语'}] unless items entity @s container.* *[custom_data={kards:'轻灵之语'}] run tag @s remove qinglingzhiyu_skill

execute as @a[tag=qinglingzhiyu] unless items entity @s container.* arrow unless items entity @s weapon.* arrow run give @s arrow 1
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute as @a[tag=!qinglingzhiyu] run clear @s arrow