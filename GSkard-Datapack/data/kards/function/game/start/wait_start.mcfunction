#初始回合
function kards:game/ingame/round/startround
#发初始武器
item replace entity @a[tag=Ready] container.0 with minecraft:golden_carrot[minecraft:custom_name={italic:false,text: "金胡萝卜",color:"gold"},lore=[{text: "每击杀10只生物升级[最高5级]",color:"gray",italic:false},{text: "老朋友",color:"dark_gray",italic:true},{text: ""},{text: "在主手时：",color:"gray",italic:false},{text: " 3 攻击伤害",color:"dark_green",italic:false},{text: " 3.5 攻击速度",color:"dark_green",italic:false}],minecraft:attribute_modifiers=[{type:"attack_damage",amount:3,id:"1",operation:"add_value",slot:"mainhand"},{type:"attack_speed",amount:-0.5,slot:"mainhand",operation:"add_value",id:"1"}],custom_data={kards:'金胡萝卜'},max_stack_size=1,tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}]
#发初始装备
#红
item replace entity @a[team=red] armor.head from block 7 -60 -48 container.9
item replace entity @a[team=red] armor.chest from block 7 -60 -48 container.10
item replace entity @a[team=red] armor.legs from block 7 -60 -48 container.11
item replace entity @a[team=red] armor.feet from block 7 -60 -48 container.12
#蓝
item replace entity @a[team=blue] armor.head from block 7 -60 -48 container.0
item replace entity @a[team=blue] armor.chest from block 7 -60 -48 container.1
item replace entity @a[team=blue] armor.legs from block 7 -60 -48 container.2
item replace entity @a[team=blue] armor.feet from block 7 -60 -48 container.3
#命令书
item replace entity @a[tag=Ready] container.8 with minecraft:written_book[item_name=[{text: "便携命令书",color:"gold"}],written_book_content={author:"Hart_GS",title:'§6便携命令书',pages:[[{text: "点击文字使用",color:"gray",bold:true},{text: "发起投降",color:"gold",click_event:{action:"run_command",command:"/trigger touxiang"},hover_event:{action:"show_text",value:"当投降人数与队伍存活人数相同时判对手胜利,仅在第1回合结束后才能使用"}},{text: "重置游戏",color:"red",click_event:{action:"run_command",command:"/trigger reset"},hover_event:{action:"show_text",value:"你真的要这样做吗？"}}]]}]
function kards:game/ingame/round/skill
execute if score #system roundtime matches 0 as @a[gamemode=adventure] run function kards:game/yongpaiku/shenji/wangzhibaoku/random3
#血量
effect give @a[tag=Ready] instant_health 1 200 true
function kards:game/random_start/title/all
