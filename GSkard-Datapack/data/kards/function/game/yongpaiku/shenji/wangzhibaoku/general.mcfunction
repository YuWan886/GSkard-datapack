#森林之护
execute as @a if items entity @s armor.chest *[custom_data={kards:'森林之护'}] run tag @s add senlinzhihu
scoreboard players add @a[tag=senlinzhihu] senlinzhihu_HealBack 1
execute as @a[tag=senlinzhihu] if score @s senlinzhihu_HealBack matches 50 at @s run scoreboard players add @s HealBack 1
execute as @a[tag=senlinzhihu] if entity @s[team=red] if score @s senlinzhihu_HealBack matches 50 at @s run scoreboard players add @e[distance=..5,team=red,tag=!tuteng] HealBack 1
execute as @a[tag=senlinzhihu] if entity @s[team=blue] if score @s senlinzhihu_HealBack matches 50 at @s run scoreboard players add @a[distance=..5,team=blue,tag=!tuteng] HealBack 1
execute as @a[tag=senlinzhihu] if score @s senlinzhihu_HealBack matches 50 run scoreboard players set @s senlinzhihu_HealBack 0

execute as @a[tag=senlinzhihu] run scoreboard players operation @s senlinzhihu_taken -= @s senlinzhihu_absorbed
scoreboard players set @a[tag=senlinzhihu] senlinzhihu_absorbed 0
execute as @a[tag=senlinzhihu] if score @s senlinzhihu_taken matches 200.. run effect give @s absorption 20 2 true
execute as @a[tag=senlinzhihu] if score @s senlinzhihu_taken matches 200.. run scoreboard players remove @s senlinzhihu_taken 200
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

execute as @a[tag=kunanyaolan,tag=!kutongzhuanhuan] unless score @s kutongzhuanhua_Time matches 1.. if predicate kards:sneak run scoreboard players add @s kunanyaolan_sneak 1
execute as @a[tag=kunanyaolan,tag=!kutongzhuanhuan] unless predicate kards:sneak run scoreboard players reset @s kunanyaolan_sneak
execute as @a[tag=!kunanyaolan,tag=kutongzhuanhuan] run tag @s remove kutongzhuanhuan
execute as @a[tag=kunanyaolan] if score @s kunanyaolan_sneak matches 20 run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/2

scoreboard players remove @a[scores={kutongzhuanhua_Time=1..}] kutongzhuanhua_Time 1
execute as @a if score @s kutongzhuanhua_Time matches 0 run tellraw @s [{text:"[!]]",color:"yellow"},{text:"苦痛转化就绪",color:"red"}]
execute as @a if score @s kutongzhuanhua_Time matches 0 at @s run playsound minecraft:block.note_block.imitate.creeper player @s ~ ~ ~ 100 0

scoreboard players reset @a[scores={kutongzhuanhua_Time=0}] kutongzhuanhua_Time
scoreboard players remove @a[tag=kutongzhuanhuan] kutongzhuanhua 1

execute as @a[tag=kutongzhuanhuan] if score @s kutongzhuanhua matches 0 run function kards:game/yongpaiku/shenji/wangzhibaoku/kunanyaolan/3

execute as @a[tag=kunanyaolan] unless items entity @s armor.chest *[custom_data={kards:'苦难摇篮'}] run tag @s remove kunanyaolan
scoreboard players set @a[tag=!kunanyaolan] behurt_kunanyaolan1 0
scoreboard players set @a[tag=!kutongzhuanhuan] behurt_kunanyaolan2 0
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
execute as @a[tag=jishengnianye] if score @s health matches ..29 run scoreboard players add @s jishengnianyeHealback 1
execute as @a[tag=jishengnianye] if score @s jishengnianyeHealback matches 7.. run scoreboard players add @s HealBack 1
execute as @a[tag=jishengnianye] if score @s jishengnianyeHealback matches 7.. run scoreboard players remove @s jishengnianyeHealback 7

execute as @a[tag=jishengnianye] if score @s health matches ..29 run effect give @s minecraft:speed 1 1 true
execute as @a[tag=jishengnianye] if score @s health matches ..29 run attribute @s minecraft:entity_interaction_range modifier add 0-0-2 -3 add_value
execute as @a[tag=jishengnianye] unless score @s health matches ..29 run attribute @s minecraft:entity_interaction_range modifier remove 0-0-2
execute as @a[tag=jishengnianye] if score @s death matches 1.. run attribute @s max_health base set 20
execute as @a[tag=jishengnianye] if score @s death matches 1.. run attribute @s entity_interaction_range modifier remove 0-0-2
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

execute as @a if items entity @s weapon.offhand lantern[custom_data={kards:'无休之火'}] run tag @s add Fire
execute as @a if items entity @s weapon.offhand lantern[custom_data={kards:'无休之火'}] run scoreboard players set @s Fire 200

execute as @a[tag=wuxiuzhihuo] if items entity @s weapon.mainhand lantern[custom_data={kards:'无休之火'}]

execute as @a[tag=wuxiuzhihuo] unless items entity @s container.* *[custom_data={kards:'无休之火'}] run scoreboard players set @s wuxiuzhihuo_shengji 0
execute as @a[tag=wuxiuzhihuo] unless items entity @s container.* *[custom_data={kards:'无休之火'}] run scoreboard players set @s wuxiuzhihuo 0
execute as @a[tag=wuxiuzhihuo] unless items entity @s container.* *[custom_data={kards:'无休之火'}] run tag @s remove wuxiuzhihuo
#石中剑
execute as @a if items entity @s weapon.mainhand stone_sword[custom_data={kards:'石中剑'}] run tag @s add shizhongjian

execute as @a[tag=shizhongjian] unless items entity @s weapon.mainhand stone_sword[custom_data={kards:'石中剑'}] run tag @s remove shizhongjian

execute as @a[tag=shizhongjian_true] unless items entity @s container.* stone_sword[custom_data={kards:'石中剑'}] run scoreboard players reset @s shizhongjian_template_1
execute as @a[tag=shizhongjian_true] unless items entity @s container.* stone_sword[custom_data={kards:'石中剑'}] run tag @s remove shizhongjian_true

#风暴战锤
execute as @a if items entity @s container.* mace[custom_data={kards:'风暴战锤'}] run tag @s add fengbaozhanchui
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_lightning_bolt matches 1.. run scoreboard players remove @s fengbaozhanchui_lightning_bolt 1
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_lightning_bolt matches 0 run tellraw @s [{text:"[风暴战锤]",color:"white"},{text:"雷击已补充!",color:"gold"}]
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_lightning_bolt matches 0 run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 100 2
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_lightning_bolt matches 0 run scoreboard players reset @s fengbaozhanchui_lightning_bolt
execute as @a[tag=fengbaozhanchui] unless items entity @s container.* mace[custom_data={kards:'风暴战锤'}] run tag @s remove fengbaozhanchui

execute as @a[tag=fengbaozhanchui] if items entity @s weapon.mainhand mace[custom_data={kards:'风暴战锤'}] unless score @s fengbaozhanchui_xuneng_Time matches 1.. if predicate kards:sneak run scoreboard players add @s fengbaozhanchui_xuneng 1
execute as @a[tag=fengbaozhanchui] unless predicate kards:sneak run scoreboard players reset @s fengbaozhanchui_xuneng

execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_xuneng matches 20 run function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/5
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_xuneng_Time matches 1.. run scoreboard players remove @s fengbaozhanchui_xuneng_Time 1
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_xuneng_Time matches 0 run tellraw @s [{text:"[风暴战锤]",color:"white"},{text:"蓄能重击已补充!",color:"gold"}]
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_xuneng_Time matches 0 run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 100 2
execute as @a[tag=fengbaozhanchui] if score @s fengbaozhanchui_xuneng_Time matches 0 run scoreboard players reset @s fengbaozhanchui_xuneng_Time

execute as @a[tag=fengbaozhanchui_xunengzhongji] unless score @s fengbaozhanchui_xuneng_Time matches 299..300 if data entity @s {OnGround:1b} at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/fengbaozhanchui/6
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
execute as @a[tag=zhengyichangji] unless items entity @s weapon.mainhand trident[custom_data={kards:'正义长戟'}] unless entity @e[type=trident,nbt={item:{components:{"minecraft:custom_data":{kards:'正义长戟'}}}}] run tag @s remove zhengyichangji

execute as @a[tag=used_zhengyichangji] run scoreboard players set @s used_zhengyichangji 100
execute as @a[tag=used_zhengyichangji] run tag @s remove used_zhengyichangji
scoreboard players add @a used_zhengyichangji 0
execute as @a if score @s used_zhengyichangji matches 1 run tellraw @s [{text: "[正义长戟] ",color:"aqua"},{text: "制裁效果就绪!",color:"green"}]
execute as @a if score @s used_zhengyichangji matches 1 at @s run playsound minecraft:item.trident.riptide_1 player @s ~ ~ ~ 100 2
execute as @a if score @s used_zhengyichangji matches 1.. run scoreboard players remove @s used_zhengyichangji 1
#轻灵之语
execute as @a if items entity @s weapon.* bow[custom_data={kards:'轻灵之语'}] run tag @s add qinglingzhiyu

execute as @a[tag=qinglingzhiyu] run attribute @s minecraft:movement_speed modifier add 0-0-1 0.35 add_multiplied_base

execute as @a[tag=qinglingzhiyu] unless items entity @s weapon.* bow[custom_data={kards:'轻灵之语'}] run attribute @s movement_speed modifier remove 0-0-1
execute as @a[tag=qinglingzhiyu] unless items entity @s weapon.* bow[custom_data={kards:'轻灵之语'}] run tag @s remove qinglingzhiyu

scoreboard players remove @a[scores={qinglingzhiyu_Time=1..}] qinglingzhiyu_Time 1
execute as @a if score @s qinglingzhiyu_Time matches 0 run tellraw @s [{text:"[轻灵之语]",color:"white"},{text:"风袭效果就绪!",color:"gold"}]
execute as @a if score @s qinglingzhiyu_Time matches 0 at @s run playsound entity.wind_charge.throw player @s ~ ~ ~ 100 2
execute as @a if score @s qinglingzhiyu_Time matches 0 run scoreboard players reset @s qinglingzhiyu_Time

execute as @a[tag=qinglingzhiyu] unless items entity @s container.* arrow unless items entity @s weapon.* arrow run give @s arrow 1
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
execute as @a[tag=!qinglingzhiyu] run clear @s arrow

#炎阳大剑
execute as @a if items entity @s weapon.* iron_sword[custom_data={kards:'炎阳大剑'}] run tag @s add yanyangdajian

effect give @a[tag=yanyangdajian] fire_resistance 1 0 true

execute as @e[tag=marker_feixue,type=marker] at @s run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/2

execute as @a[tag=yanyangdajian] if predicate kards:sneak unless score @s yanyangdajian_Time matches 1.. run scoreboard players add @s yangyandajian 1
execute as @a[tag=yanyangdajian] unless predicate kards:sneak run scoreboard players reset @s yangyandajian
execute as @a[tag=yanyangdajian] if score @s yangyandajian matches 50 run function kards:game/yongpaiku/shenji/wangzhibaoku/yanyangdajian/5
scoreboard players add @a[scores={yanyangdajian_Time=1..}] yanyangdajian_Time 1
execute as @a if score @s yanyangdajian_Time matches 0 run tellraw @s [{text:"[阳炎大剑]",color:"dark_red"},[{text:"焚烧之域",color:"#690101"},{text:"就绪!",color:"gold"}]]
execute as @a if score @s yanyangdajian_Time matches 0 at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 100 0

scoreboard players remove @a[scores={yangyandajian_fenshaozhiyu=1..}] yangyandajian_fenshaozhiyu 1

execute as @a[scores={yangyandajian_fenshaozhiyu=1..}] at @s run particle lava ~ ~ ~ 2 0.1 2 1 5 force @a

scoreboard players add @a[scores={yangyandajian_fenshaozhiyu=1..}] yangyandajian_fenshaozhiyu_damage 1
execute as @a[scores={yangyandajian_fenshaozhiyu_damage=20}] run tag @s add yangyandajian_fenshaozhiyu_damage
execute as @a[team=red,scores={yangyandajian_fenshaozhiyu_damage=20}] at @s as @e[team=blue,distance=..5] run damage @s 3 kards:huoyan by @p[team=red,tag=yangyandajian_fenshaozhiyu_damage]
execute as @a[team=blue,scores={yangyandajian_fenshaozhiyu_damage=20}] at @s as @e[team=red,distance=..5] run damage @s 3 kards:huoyan by @p[team=blue,tag=yangyandajian_fenshaozhiyu_damage]
execute as @a[scores={yangyandajian_fenshaozhiyu_damage=20},tag=yangyandajian_fenshaozhiyu_damage] run tag @s remove yangyandajian_fenshaozhiyu_damage
scoreboard players reset @a[scores={yangyandajian_fenshaozhiyu_damage=20}] yangyandajian_fenshaozhiyu_damage

execute as @a[team=red,scores={yangyandajian_fenshaozhiyu=1..}] at @s run tag @e[team=blue,distance=..5,gamemode=adventure] add Fire
execute as @a[team=blue,scores={yangyandajian_fenshaozhiyu=1..}] at @s run tag @e[team=red,distance=..5,gamemode=adventure] add Fire
execute as @a[team=red,scores={yangyandajian_fenshaozhiyu=1..}] at @s run scoreboard players set @e[team=blue,distance=..5,gamemode=adventure] Fire 120
execute as @a[team=blue,scores={yangyandajian_fenshaozhiyu=1..}] at @s run scoreboard players set @e[team=red,distance=..5,gamemode=adventure] Fire 120
execute as @a if score @s yangyandajian_fenshaozhiyu matches 0 run scoreboard players reset @s yangyandajian_fenshaozhiyu

execute as @a[tag=yanyangdajian] unless items entity @s weapon.* iron_sword[custom_data={kards:'炎阳大剑'}] run tag @s remove yanyangdajian

#凋零太刀
execute as @a if items entity @s weapon.* netherite_sword[custom_data={kards:'凋零太刀'}] run tag @s add diaolingtaidao

execute as @a[tag=diaolingtaidao] if predicate kards:sneak unless score @s diaolingtaidao_Time matches 1.. run scoreboard players add @s diaolingtaidao 1
execute as @a[tag=diaolingtaidao] if score @s diaolingtaidao matches 15 run scoreboard players set @s diaolingtaidao_Time 160
execute as @a[tag=diaolingtaidao] if score @s diaolingtaidao matches 15 run function kards:game/yongpaiku/shenji/wangzhibaoku/diaolingtaidao/1

scoreboard players remove @a[tag=diaolingtaidao,scores={diaolingtaidao_Time=1..}] diaolingtaidao_Time 1
execute as @a if score @s diaolingtaidao_Time matches 0 run tellraw @s [{text:"[凋零太刀]",color:"dark_gray"},{text:"拔刀·碎魂 效果就绪!",color:"gold"}]
execute as @a if score @s diaolingtaidao_Time matches 0 at @s run playsound entity.wither.shoot player @s
execute as @a if score @s diaolingtaidao_Time matches 0 run scoreboard players reset @s diaolingtaidao_Time
execute as @a[tag=diaolingtaidao] unless items entity @s weapon.* netherite_sword[custom_data={kards:'凋零太刀'}] run tag @s remove diaolingtaidao

execute as @e[type=block_display,tag=diaolingtaidao_wither_rose] run scoreboard players remove @s diaolingtaidao_wither_rose 1
execute as @e[type=block_display,tag=diaolingtaidao_wither_rose] unless score @s diaolingtaidao_wither_rose matches 1.. run kill @s

execute as @e[type=block_display,tag=diaolingtaidao_wither_rose] run scoreboard players add @s diaolingtaidao_wither_rose_Healback 1
execute as @e[type=block_display,tag=diaolingtaidao_wither_rose,team=red] if score @s diaolingtaidao_wither_rose_Healback matches 10 at @s run scoreboard players add @a[tag=diaolingtaidao_wither_rose,team=red,distance=..7] HealBack 1
execute as @e[type=block_display,tag=diaolingtaidao_wither_rose,team=blue] if score @s diaolingtaidao_wither_rose_Healback matches 10 at @s run scoreboard players add @a[tag=diaolingtaidao_wither_rose,team=blue,distance=..7] HealBack 1
execute as @e[type=block_display,tag=diaolingtaidao_wither_rose] if score @s diaolingtaidao_wither_rose_Healback matches 10 run scoreboard players set @s diaolingtaidao_wither_rose_Healback 0

execute as @e[type=block_display,tag=diaolingtaidao_wither_rose,team=red] at @s run effect give @e[distance=..7,team=blue] wither 1 2 true
execute as @e[type=block_display,tag=diaolingtaidao_wither_rose,team=blue] at @s run effect give @e[distance=..7,team=red] wither 1 2 true