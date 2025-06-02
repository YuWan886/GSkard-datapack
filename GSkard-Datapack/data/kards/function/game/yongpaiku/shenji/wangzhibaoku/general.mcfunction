#森林之护
execute as @a if items entity @s armor.chest *[custom_data={kards:'森林之护'}] run tag @s add senlinzhihu
scoreboard players add @a[tag=senlinzhihu] senlinzhihu_HealBack 1
execute as @a[tag=senlinzhihu] if score @s senlinzhihu_HealBack matches 50 run scoreboard players add @s HealBack 1
execute as @a[tag=senlinzhihu] if score @s senlinzhihu_HealBack matches 50 run scoreboard players set @s senlinzhihu_HealBack 0

scoreboard players add @a[tag=senlinzhihu] senlinzhihu 1
execute as @a[tag=senlinzhihu] if score @s senlinzhihu matches 1200.. run effect give @s absorption 60 4 true
execute as @a[tag=senlinzhihu] if score @s senlinzhihu matches 1200.. run scoreboard players set @s senlinzhihu 0
execute as @a[tag=senlinzhihu] unless items entity @s armor.chest *[custom_data={kards:'森林之护'}] run effect clear @s regeneration
execute as @a[tag=senlinzhihu] unless items entity @s armor.chest *[custom_data={kards:'森林之护'}] run tag @s remove senlinzhihu
#天神石板甲
execute as @a if items entity @s armor.chest *[custom_data={kards:'天神石板甲'}] run tag @s add tianshenshibanjia
scoreboard players add @a[tag=tianshenshibanjia] damage_tianshenshibanjia 1
execute as @a[tag=tianshenshibanjia] if score @s damage_tianshenshibanjia matches 15 at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 100 1
execute as @a[tag=tianshenshibanjia] if score @s damage_tianshenshibanjia matches 30 at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 100 2
execute as @a[tag=tianshenshibanjia] if score @s damage_tianshenshibanjia matches 45 at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 100 2
execute as @a[tag=tianshenshibanjia] if score @s damage_tianshenshibanjia matches 60 at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 100 2
execute as @a[tag=tianshenshibanjia] if score @s damage_tianshenshibanjia matches 75 at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 100 2
execute as @a[tag=tianshenshibanjia] if score @s damage_tianshenshibanjia matches 90 at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 100 0

execute as @a[tag=tianshenshibanjia] if score @s damage_tianshenshibanjia matches 90.. run tag @s add damage_tianshenshibanjia
execute as @a[tag=tianshenshibanjia] if score @s damage_tianshenshibanjia matches 90.. run scoreboard players set @s damage_tianshenshibanjia 48
execute as @a[tag=tianshenshibanjia,tag=damage_tianshenshibanjia] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/tianshenshibanjia/damage

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

execute as @a[tag=kunanyaolan] if predicate kards:sneak run scoreboard players add @s 

scoreboard players add @a[tag=kunanyaolan] healback_kunanyaolan 1
scoreboard players set #system healback_kunanyaolan 4
scoreboard players set #system healback_kunanyaolan2 100
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 run scoreboard players operation @s healback_kunanyaolan2 = @s behurt_kunanyaolan2
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 run scoreboard players set @s behurt_kunanyaolan2 0
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 run scoreboard players operation @s healback_kunanyaolan2 *= #system healback_kunanyaolan
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 run scoreboard players operation @s healback_kunanyaolan2 /= #system healback_kunanyaolan2
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 run tellraw @s [{text: "[苦难摇篮] ",color:"red"},{text: "苦痛转化效果触发!",color:"green"}]
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600 at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 100 0
execute as @a[tag=kunanyaolan] if score @s healback_kunanyaolan matches 600.. run scoreboard players set @s healback_kunanyaolan 0


effect give @a[tag=kunanyaolan,scores={healback_kunanyaolan2=1..}] minecraft:regeneration 1 5 true
effect clear @a[tag=kunanyaolan,scores={healback_kunanyaolan2=0}] regeneration
scoreboard players remove @a[tag=kunanyaolan,scores={healback_kunanyaolan2=0..}] healback_kunanyaolan2 1

execute as @a[tag=kunanyaolan] unless items entity @s armor.chest *[custom_data={kards:'苦难摇篮'}] run tag @s remove kunanyaolan
scoreboard players set @a[tag=!kunanyaolan] behurt_kunanyaolan1 0
scoreboard players set @a[tag=!kunanyaolan] behurt_kunanyaolan2 0
#祥兆玉石
execute as @a if items entity @s container.* *[custom_data={kards:'祥兆玉石'}] run tag @s add xiangzhaoyushi
effect clear @a[tag=xiangzhaoyushi] slowness
effect clear @a[tag=xiangzhaoyushi] mining_fatigue
effect clear @a[tag=xiangzhaoyushi] blindness
effect clear @a[tag=xiangzhaoyushi] weakness
effect clear @a[tag=xiangzhaoyushi] poison
effect clear @a[tag=xiangzhaoyushi] wither
effect clear @a[tag=xiangzhaoyushi] levitation
effect clear @a[tag=xiangzhaoyushi] darkness
execute as @a[team=red,tag=xiangzhaoyushi] at @s run effect give @e[team=blue,distance=..4] slowness 3 2 true
execute as @a[team=blue,tag=xiangzhaoyushi] at @s run effect give @e[team=red,distance=..4] slowness 3 2 true

scoreboard players add @a[tag=xiangzhaoyushi] xiangzhaoyushi 1
execute as @a[tag=xiangzhaoyushi] if score @s xiangzhaoyushi matches 1200.. run effect give @s absorption 60 4 true
execute as @a[tag=xiangzhaoyushi] if score @s xiangzhaoyushi matches 1200.. run scoreboard players set @s xiangzhaoyushi 0
execute as @a[tag=xiangzhaoyushi] unless items entity @s container.* *[custom_data={kards:'祥兆玉石'}] run tag @s remove xiangzhaoyushi
#飞升护符
execute as @a if items entity @s container.* *[custom_data={kards:'飞升护符'}] run tag @s add feishenhufu
execute as @a[tag=feishenhufu] run attribute @s minecraft:max_health modifier add 0-0-11 20 add_value
execute if score 回合数 GameRound matches 17.. run effect give @a[tag=feishenhufu] strength infinite 3 true
execute if score 回合数 GameRound matches 0 run effect give @a[tag=feishenhufu] strength infinite 3 true
execute as @a[tag=feishenhufu] unless items entity @s container.* *[custom_data={kards:'飞升护符'}] run attribute @s minecraft:max_health modifier remove 0-0-11
execute as @a[tag=feishenhufu] unless items entity @s container.* *[custom_data={kards:'飞升护符'}] run effect clear @s strength
execute as @a[tag=feishenhufu] unless items entity @s container.* *[custom_data={kards:'飞升护符'}] run tag @s remove feishenhufu
#讲述者
execute as @a if items entity @s container.* *[custom_data={kards:'讲述者'}] run tag @s add jiangshuzhe
function kards:game/yongpaiku/shenji/wangzhibaoku/jiangshuzhe/event/general
execute as @a[tag=jiangshuzhe] unless items entity @s container.* *[custom_data={kards:'讲述者'}] run tag @s remove jiangshuzhe
#寄生粘液
execute as @a[tag=jishengnianye] run scoreboard players set @s jinzijue 0
execute as @a[tag=jishengnianye] run attribute @s max_health base set 200
execute as @a[tag=jishengnianye] if score @s health matches 101.. run effect give @s strength 1 4 true
execute as @a[tag=jishengnianye] if score @s health matches 101.. run effect give @s wither 1 1 true
execute as @a[tag=jishengnianye] if score @s health matches 30..100 run effect give @s strength 1 3 true
execute as @a[tag=jishengnianye] if score @s health matches 30..100 run effect give @s resistance 1 0 true
execute as @a[tag=jishengnianye] if score @s health matches 30..100 run effect give @s slowness 1 1 true
execute as @a[tag=jishengnianye] if score @s health matches ..29 run scoreboard players add @s jishengnianyeHealback 1
execute as @a[tag=jishengnianye] if score @s jishengnianyeHealback matches 7.. run scoreboard players add @s HealBack 1
execute as @a[tag=jishengnianye] if score @s jishengnianyeHealback matches 7.. run scoreboard players remove @s jishengnianyeHealback 7

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

execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 1..45 run title @s actionbar [{text: "初窥  ",color:"aqua"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 46..90 run title @s actionbar [{text: "开窍  ",color:"blue"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 91..135 run title @s actionbar [{text: "焱智  ",color:"yellow"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 136..180 run title @s actionbar [{text: "合一  ",color:"gold"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 181..350 run title @s actionbar [{text: "天察  ",color:"red"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]
execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}] if score @s wuxiuzhihuo_shengji matches 351.. run title @s actionbar [{text: "无休  ",color:"dark_red"},{score:{objective:"wuxiuzhihuo_shengji",name:"@s"},color:"green"}]

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

execute as @a[tag=sishenzhilian] if score @s used_sishenzhilian matches 2.. run scoreboard players add @s HealBack 1
execute as @a[tag=sishenzhilian] if score @s used_sishenzhilian matches 2.. run scoreboard players set @s used_sishenzhilian 0
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
execute as @a if score @s used_zhengyichangji matches 1 run tellraw @s [{text: "[正义长戟] ",color:"aqua"},{text: "制裁效果冷却完毕!",color:"green"}]
execute as @a if score @s used_zhengyichangji matches 1 at @s run playsound minecraft:item.trident.riptide_1 player @s ~ ~ ~ 100 2
execute as @a if score @s used_zhengyichangji matches 1.. run scoreboard players remove @s used_zhengyichangji 1
#轻灵之语
execute as @a if items entity @s weapon.* *[custom_data={kards:'轻灵之语'}] run tag @s add qinglingzhiyu
execute as @a if items entity @s container.* *[custom_data={kards:'轻灵之语'}] run tag @s add qinglingzhiyu_skill
execute as @a if items entity @s weapon.* *[custom_data={kards:'轻灵之语'}] run tag @s add qinglingzhiyu_skill
execute as @a[tag=qinglingzhiyu_skill] if score @s jitui_qinglingzhiyu matches 1 run tellraw @s [{text: "[轻灵之语] ",color:"aqua"},{text: "抗拒效果冷却完毕!",color:"green"}]
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

#炎阳大剑
execute as @a if items entity @s weapon.* iron_sword[custom_data={kards:'炎阳大剑'}] run tag @s add yanyangdajian

effect give @a[tag=yanyangdajian] fire_resistance 1 0 true

execute as @e[tag=marker_feixue,type=marker] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/3

execute as @a[tag=yanyangdajian] unless items entity @s weapon.* iron_sword[custom_data={kards:'炎阳大剑'}] run tag @s remove yanyangdajian