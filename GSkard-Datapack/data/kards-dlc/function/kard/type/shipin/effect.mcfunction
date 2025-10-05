# 模板：饰品
execute as @a if items entity @s container.17 turtle_scute[custom_data={kards:'海龟鳞甲'}] run tag @s add haiguilinjia
execute as @a if items entity @s container.26 turtle_scute[custom_data={kards:'海龟鳞甲'}] run tag @s add haiguilinjia
execute as @a if items entity @s container.35 turtle_scute[custom_data={kards:'海龟鳞甲'}] run tag @s add haiguilinjia
execute as @a[tag=haiguilinjia] run attribute @s minecraft:armor modifier add 0-0-1 5 add_value
execute as @a[tag=haiguilinjia] run attribute @s minecraft:armor_toughness modifier add 0-0-1 1 add_value
execute as @a[tag=haiguilinjia] unless items entity @s container.17 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.26 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.35 turtle_scute[custom_data={kards:'海龟鳞甲'}] run attribute @s minecraft:armor modifier remove 0-0-1
execute as @a[tag=haiguilinjia] unless items entity @s container.17 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.26 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.35 turtle_scute[custom_data={kards:'海龟鳞甲'}] run attribute @s minecraft:armor_toughness modifier remove 0-0-1
execute as @a unless items entity @s container.17 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.26 turtle_scute[custom_data={kards:'海龟鳞甲'}] unless items entity @s container.35 turtle_scute[custom_data={kards:'海龟鳞甲'}] run tag @s remove haiguilinjia