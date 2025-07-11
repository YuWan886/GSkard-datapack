#踩区域选队
execute positioned 86.0 229 -31.0 as @a[dx=2,dz=2,tag=Un_Ready] run function kards:lobby/team/join/unready
execute positioned 86.0 229 -23.0 as @a[dx=2,dz=2,tag=Un_Ready] run function kards:lobby/team/join/unready

execute positioned 86.0 229 -31.0 as @a[dx=2,dz=2,tag=Ready,team=!red] run function kards:lobby/team/join/red
execute positioned 86.0 229 -23.0 as @a[dx=2,dz=2,tag=Ready,team=!blue] run function kards:lobby/team/join/blue