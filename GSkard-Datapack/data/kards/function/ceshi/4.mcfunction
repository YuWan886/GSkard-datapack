function kards:ceshi/1
function kards:ceshi/2
function kards:ceshi/3

tellraw @a [{translate: "kards.function.ceshi.4.1", fallback: "第1次三个数分别是:"},{nbt:"temp.A",storage:"kards:dialog",},{translate: "kards.function.ceshi.4.2", fallback: " | "},{nbt:"temp.B",storage:"kards:dialog",},{translate: "kards.function.ceshi.4.2", fallback: " | "},{nbt:"temp.C",storage:"kards:dialog",}]
tellraw @a [{translate: "kards.function.ceshi.4.3", fallback: "第2次三个数分别是:"},{nbt:"temp.a",storage:"kards:dialog",},{translate: "kards.function.ceshi.4.2", fallback: " | "},{nbt:"temp.b",storage:"kards:dialog",},{translate: "kards.function.ceshi.4.2", fallback: " | "},{nbt:"temp.c",storage:"kards:dialog",}]
tellraw @a [{translate: "kards.function.ceshi.4.4", fallback: "第3次三个数分别是:"},{nbt:"temp.1",storage:"kards:dialog",},{translate: "kards.function.ceshi.4.2", fallback: " | "},{nbt:"temp.2",storage:"kards:dialog",},{translate: "kards.function.ceshi.4.2", fallback: " | "},{nbt:"temp.3",storage:"kards:dialog",}]