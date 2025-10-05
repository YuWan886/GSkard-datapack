function kards:game/yongpaiku/use_general/kard_general



#禁用时间为5s*disable_cooldown_scale
item replace entity @s weapon.offhand with minecraft:shield[custom_name=[{translate: "json.kards.dialog.paiku.zhuangbei.dunpai.1182", fallback: "盾牌",color:"gold",italic:false}],lore=[{translate: "json.kards.dialog.first_join.1.71", fallback: ""},{translate: "kards.function.game.yongpaiku.zhuangbei.dunpai.1", fallback: "使用时",color:"gray",italic:false},{translate: "kards.function.game.yongpaiku.zhuangbei.dunpai.2", fallback: "0.8s 禁用时间",color:"blue",italic:false},{translate: "kards.function.game.yongpaiku.zhuangbei.dunpai.3", fallback: "90 格挡范围",color:"blue",italic:false}],blocks_attacks={"block_delay_seconds":0,"disable_cooldown_scale":0.16,"damage_reductions": [{"base": 0,"factor": 1,"horizontal_blocking_angle": 90}]},unbreakable={},banner_patterns=[{pattern:"minecraft:gradient_up",color:"gray"},{pattern:"globe",color:"black"},{pattern:"border",color:"black"}],custom_data={kards:'盾牌'},max_stack_size=1,tooltip_display={hidden_components:["unbreakable","banner_patterns"]}]
scoreboard players operation @s kardCount -= #kard_dunpai kardCount
