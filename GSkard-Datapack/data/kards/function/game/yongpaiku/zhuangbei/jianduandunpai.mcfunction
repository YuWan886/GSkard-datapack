

function kards:game/yongpaiku/use_general/kard_general

#禁用时间为5s*disable_cooldown_scale
item replace entity @s weapon.offhand with minecraft:shield[custom_name=[{text:"尖端盾牌",color:"gold",italic:false}],lore=[{text:""},{text: "使用时",color:"gray",italic:false},{text: "0.4s 禁用时间",color:"blue",italic:false},{text: "35 格挡范围",color:"blue",italic:false}],blocks_attacks={"block_delay_seconds":0,"disable_cooldown_scale":0.08,"damage_reductions": [{"base": 0,"factor": 1,"horizontal_blocking_angle": 35}]},unbreakable={},banner_patterns=[{pattern:"minecraft:gradient_up",color:"gray"},{pattern:"globe",color:"black"},{pattern:"border",color:"black"}],custom_data={kards:'尖端盾牌'},max_stack_size=1,tooltip_display={hidden_components:["unbreakable","banner_patterns"]}]
scoreboard players operation @s kardCount -= #kard_dunpai kardCount
