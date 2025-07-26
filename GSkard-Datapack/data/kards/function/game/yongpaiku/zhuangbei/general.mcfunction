
#海龟鳞甲
execute as @a if items entity @s container.17 turtle_scute[custom_data={kards:'海龟鳞甲'}] run tag @s add haiguilinjia
execute as @a if items entity @s container.26 turtle_scute[custom_data={kards:'海龟鳞甲'}] run tag @s add haiguilinjia
execute as @a if items entity @s container.35 turtle_scute[custom_data={kards:'海龟鳞甲'}] run tag @s add haiguilinjia
execute as @a[tag=haiguilinjia] run attribute @s minecraft:armor modifier add 0-0-1 5 add_value
execute as @a[tag=haiguilinjia] run attribute @s minecraft:armor_toughness modifier add 0-0-1 1 add_value
execute as @a[tag=haiguilinjia] unless items entity @s container.17 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.26 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.35 turtle_scute[custom_data={kards:'海龟鳞甲'}] run attribute @s minecraft:armor modifier remove 0-0-1
execute as @a[tag=haiguilinjia] unless items entity @s container.17 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.26 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.35 turtle_scute[custom_data={kards:'海龟鳞甲'}] run attribute @s minecraft:armor_toughness modifier remove 0-0-1
execute as @a unless items entity @s container.17 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.26 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.35 turtle_scute[custom_data={kards:'海龟鳞甲'}] run tag @s remove haiguilinjia

#破碎剑刃
execute as @a if items entity @s container.17 prismarine_shard[custom_data={kards:'破碎剑刃'}] run tag @s add posuijianren
execute as @a if items entity @s container.26 prismarine_shard[custom_data={kards:'破碎剑刃'}] run tag @s add posuijianren
execute as @a if items entity @s container.35 prismarine_shard[custom_data={kards:'破碎剑刃'}] run tag @s add posuijianren
execute as @a[tag=posuijianren] run attribute @s minecraft:attack_speed modifier add 0-0-1 0.3 add_multiplied_base
execute as @a[tag=posuijianren] unless items entity @s container.17 prismarine_shard[custom_data={kards:'破碎剑刃'}] unless items entity @s container.26 prismarine_shard[custom_data={kards:'破碎剑刃'}] unless items entity @s container.35 prismarine_shard[custom_data={kards:'破碎剑刃'}] run attribute @s minecraft:attack_speed modifier remove 0-0-1
execute as @a unless items entity @s container.17 prismarine_shard[custom_data={kards:'破碎剑刃'}] unless items entity @s container.26 prismarine_shard[custom_data={kards:'破碎剑刃'}] unless items entity @s container.35 prismarine_shard[custom_data={kards:'破碎剑刃'}] run tag @s remove posuijianren

#鞋钉
execute as @a if items entity @s container.17 lightning_rod[custom_data={kards:'鞋钉'}] run tag @s add xieding
execute as @a if items entity @s container.26 lightning_rod[custom_data={kards:'鞋钉'}] run tag @s add xieding
execute as @a if items entity @s container.35 lightning_rod[custom_data={kards:'鞋钉'}] run tag @s add xieding
execute as @a[tag=xieding] run attribute @s minecraft:knockback_resistance modifier add 0-0-1 0.2 add_value
execute as @a[tag=xieding] unless items entity @s container.17 lightning_rod[custom_data={kards:'鞋钉'}] unless items entity @s container.26 lightning_rod[custom_data={kards:'鞋钉'}] unless items entity @s container.35 lightning_rod[custom_data={kards:'鞋钉'}] run attribute @s minecraft:knockback_resistance modifier remove 0-0-1
execute as @a unless items entity @s container.17 lightning_rod[custom_data={kards:'鞋钉'}] unless items entity @s container.26 lightning_rod[custom_data={kards:'鞋钉'}] unless items entity @s container.35 lightning_rod[custom_data={kards:'鞋钉'}] run tag @s remove xieding

#便携活塞
execute as @a if items entity @s container.17 sticky_piston[custom_data={kards:'便携活塞'}] run tag @s add bianxiehuosai
execute as @a if items entity @s container.26 sticky_piston[custom_data={kards:'便携活塞'}] run tag @s add bianxiehuosai
execute as @a if items entity @s container.35 sticky_piston[custom_data={kards:'便携活塞'}] run tag @s add bianxiehuosai
execute as @a[tag=bianxiehuosai] run attribute @s minecraft:attack_knockback modifier add 0-0-2 1 add_value
execute as @a[tag=bianxiehuosai] unless items entity @s container.17 sticky_piston[custom_data={kards:'便携活塞'}] unless items entity @s container.26 sticky_piston[custom_data={kards:'便携活塞'}] unless items entity @s container.35 sticky_piston[custom_data={kards:'便携活塞'}] run attribute @s minecraft:attack_knockback modifier remove 0-0-2
execute as @a unless items entity @s container.17 sticky_piston[custom_data={kards:'便携活塞'}] unless items entity @s container.26 sticky_piston[custom_data={kards:'便携活塞'}] unless items entity @s container.35 sticky_piston[custom_data={kards:'便携活塞'}] run tag @s remove bianxiehuosai

#迅捷之羽
execute as @a if items entity @s container.17 feather[custom_data={kards:'迅捷之羽'}] run tag @s add xunjiezhiyu
execute as @a if items entity @s container.26 feather[custom_data={kards:'迅捷之羽'}] run tag @s add xunjiezhiyu
execute as @a if items entity @s container.35 feather[custom_data={kards:'迅捷之羽'}] run tag @s add xunjiezhiyu
execute as @a[tag=xunjiezhiyu] run attribute @s minecraft:movement_speed modifier add 0-0-5 0.2 add_multiplied_base
execute as @a[tag=xunjiezhiyu] unless items entity @s container.17 feather[custom_data={kards:'迅捷之羽'}] unless items entity @s container.26 feather[custom_data={kards:'迅捷之羽'}] unless items entity @s container.35 feather[custom_data={kards:'迅捷之羽'}] run attribute @s minecraft:movement_speed modifier remove 0-0-5
execute as @a unless items entity @s container.17 feather[custom_data={kards:'迅捷之羽'}] unless items entity @s container.26 feather[custom_data={kards:'迅捷之羽'}] unless items entity @s container.35 feather[custom_data={kards:'迅捷之羽'}] run tag @s remove xunjiezhiyu

#灵魂收割器
execute as @a if items entity @s container.17 cauldron[custom_data={kards:'灵魂收割器'}] run tag @s add linghunshougeqi
execute as @a if items entity @s container.26 cauldron[custom_data={kards:'灵魂收割器'}] run tag @s add linghunshougeqi
execute as @a if items entity @s container.35 cauldron[custom_data={kards:'灵魂收割器'}] run tag @s add linghunshougeqi

execute as @a unless items entity @s container.17 cauldron[custom_data={kards:'灵魂收割器'}] unless items entity @s container.26 cauldron[custom_data={kards:'灵魂收割器'}] unless items entity @s container.35 cauldron[custom_data={kards:'灵魂收割器'}] run tag @s remove linghunshougeqi
