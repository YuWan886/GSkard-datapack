execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"在回合结束时 你不再重置K\n","color":"green"},\
        {"text":"但是 每回合只能获得Kmax的50%的K","color":"gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[贪欲]","color":"white"},\
        {"text":"每1次使用贪欲增加层数->每2次使用贪欲增加层数","light_purple":"white"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[墓园狂欢]","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每击杀1个生物 增加1%攻击力","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次使用弩 增加1%弩填装速度","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次被攻击 22%概率抽一张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"每有1个队友死亡 每个友方回合开始时+25经验+8生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"gold"}],\
        "tooltip": [\
        {"text":"在你第1次死亡后复活\n","color":"gold"},\
        {"text":"复活后你不能够再增加Kmax且生命上限-20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"你的所有队友抽取2张神迹牌\n","color":"gold"},\
        {"text":"随后灵魂化身为光 每5s可朝方向发射1颗光球 治疗队友或是伤害敌人","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"每回合开始时 \n","color":"green"},\
        {"text":"扣除当前生命值的20%的真实伤害\n","color":"red"},\
        {"text":"抽4张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"你的生命值将持续恢复至等同于生命值最多的队友\n","color":"green"},\
        {"text":"(不免疫重伤)\n","color":"dark_gray"},\
        {"text":"你的生命值不会再高于生命值最多的队友\n","color":"green"},\
        {"text":"你的任意队友死亡后 你也死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得20Kmax\n 本局游戏\n","color":"green"},\
        {"text":"你每有10Kmax 友方回合开始时额外加2Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每消耗2Kmax 友方回合开始时额外加4K 抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"均衡发展","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每使用6张牌 就+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"领先思维","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得40Kmax 抽5张牌\n","color":"green"},\
        {"text":"本局不再获得Kmax","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻穿戴上全套绑定诅咒的下界合金胸甲\n","color":"gold"},\
        {"text":"本局不再获得任何资源\n","color":"red"},\
        {"text":"不会被诅咒护甲选中","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"你不能穿戴护甲\n","color":"red"},\
        {"text":"但是\n","color":"green"},\
        {"text":"护甲值+30 攻击伤害+40%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"立刻抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏 每回合结束时\n","color":"green"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的一半 分配等额伤害于敌方玩家","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_1 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"任意你方生物死后 你都有30%概率抽一张牌","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"在回合结束时 你不再重置K\n","color":"green"},\
        {"text":"但是 每回合只能获得Kmax的50%的K","color":"gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[贪欲]","color":"white"},\
        {"text":"每1次使用贪欲增加层数->每2次使用贪欲增加层数","light_purple":"white"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[墓园狂欢]","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每击杀1个生物 增加1%攻击力","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次使用弩 增加1%弩填装速度","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次被攻击 22%概率抽一张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"每有1个队友死亡 每个友方回合开始时+25经验+8生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"gold"}],\
        "tooltip": [\
        {"text":"在你第1次死亡后复活\n","color":"gold"},\
        {"text":"复活后你不能够再增加Kmax且生命上限-20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"你的所有队友抽取2张神迹牌\n","color":"gold"},\
        {"text":"随后灵魂化身为光 每5s可朝方向发射1颗光球 治疗队友或是伤害敌人","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"每回合开始时 \n","color":"green"},\
        {"text":"扣除当前生命值的20%的真实伤害\n","color":"red"},\
        {"text":"抽4张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"你的生命值将持续恢复至等同于生命值最多的队友\n","color":"green"},\
        {"text":"(不免疫重伤)\n","color":"dark_gray"},\
        {"text":"你的生命值不会再高于生命值最多的队友\n","color":"green"},\
        {"text":"你的任意队友死亡后 你也死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得20Kmax\n 本局游戏\n","color":"green"},\
        {"text":"你每有10Kmax 友方回合开始时额外加2Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每消耗2Kmax 友方回合开始时额外加4K 抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"均衡发展","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每使用6张牌 就+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"领先思维","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得40Kmax 抽5张牌\n","color":"green"},\
        {"text":"本局不再获得Kmax","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻穿戴上全套绑定诅咒的下界合金胸甲\n","color":"gold"},\
        {"text":"本局不再获得任何资源\n","color":"red"},\
        {"text":"不会被诅咒护甲选中","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"你不能穿戴护甲\n","color":"red"},\
        {"text":"但是\n","color":"green"},\
        {"text":"护甲值+30 攻击伤害+40%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"立刻抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏 每回合结束时\n","color":"green"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的一半 分配等额伤害于敌方玩家","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_2 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"任意你方生物死后 你都有30%概率抽一张牌","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"在回合结束时 你不再重置K\n","color":"green"},\
        {"text":"但是 每回合只能获得Kmax的50%的K","color":"gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[贪欲]","color":"white"},\
        {"text":"每1次使用贪欲增加层数->每2次使用贪欲增加层数","light_purple":"white"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[墓园狂欢]","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每击杀1个生物 增加1%攻击力","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次使用弩 增加1%弩填装速度","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次被攻击 22%概率抽一张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"每有1个队友死亡 每个友方回合开始时+25经验+8生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"gold"}],\
        "tooltip": [\
        {"text":"在你第1次死亡后复活\n","color":"gold"},\
        {"text":"复活后你不能够再增加Kmax且生命上限-20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"你的所有队友抽取2张神迹牌\n","color":"gold"},\
        {"text":"随后灵魂化身为光 每5s可朝方向发射1颗光球 治疗队友或是伤害敌人","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"每回合开始时 \n","color":"green"},\
        {"text":"扣除当前生命值的20%的真实伤害\n","color":"red"},\
        {"text":"抽4张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"你的生命值将持续恢复至等同于生命值最多的队友\n","color":"green"},\
        {"text":"(不免疫重伤)\n","color":"dark_gray"},\
        {"text":"你的生命值不会再高于生命值最多的队友\n","color":"green"},\
        {"text":"你的任意队友死亡后 你也死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得20Kmax\n 本局游戏\n","color":"green"},\
        {"text":"你每有10Kmax 友方回合开始时额外加2Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每消耗2Kmax 友方回合开始时额外加4K 抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"均衡发展","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每使用6张牌 就+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"领先思维","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得40Kmax 抽5张牌\n","color":"green"},\
        {"text":"本局不再获得Kmax","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻穿戴上全套绑定诅咒的下界合金胸甲\n","color":"gold"},\
        {"text":"本局不再获得任何资源\n","color":"red"},\
        {"text":"不会被诅咒护甲选中","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"你不能穿戴护甲\n","color":"red"},\
        {"text":"但是\n","color":"green"},\
        {"text":"护甲值+30 攻击伤害+40%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"立刻抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏 每回合结束时\n","color":"green"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的一半 分配等额伤害于敌方玩家","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 1 if score @s Talent_Random_3 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"任意你方生物死后 你都有30%概率抽一张牌","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"在回合结束时 你不再重置K\n","color":"green"},\
        {"text":"但是 每回合只能获得Kmax的50%的K","color":"gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[贪欲]","color":"white"},\
        {"text":"每1次使用贪欲增加层数->每2次使用贪欲增加层数","light_purple":"white"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[墓园狂欢]","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每击杀1个生物 增加1%攻击力","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次使用弩 增加1%弩填装速度","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次被攻击 22%概率抽一张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"每有1个队友死亡 每个友方回合开始时+25经验+8生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"gold"}],\
        "tooltip": [\
        {"text":"在你第1次死亡后复活\n","color":"gold"},\
        {"text":"复活后你不能够再增加Kmax且生命上限-20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"你的所有队友抽取2张神迹牌\n","color":"gold"},\
        {"text":"随后灵魂化身为光 每5s可朝方向发射1颗光球 治疗队友或是伤害敌人","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"每回合开始时 \n","color":"green"},\
        {"text":"扣除当前生命值的20%的真实伤害\n","color":"red"},\
        {"text":"抽4张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"你的生命值将持续恢复至等同于生命值最多的队友\n","color":"green"},\
        {"text":"(不免疫重伤)\n","color":"dark_gray"},\
        {"text":"你的生命值不会再高于生命值最多的队友\n","color":"green"},\
        {"text":"你的任意队友死亡后 你也死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得20Kmax\n 本局游戏\n","color":"green"},\
        {"text":"你每有10Kmax 友方回合开始时额外加2Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每消耗2Kmax 友方回合开始时额外加4K 抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"均衡发展","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每使用6张牌 就+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"领先思维","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得40Kmax 抽5张牌\n","color":"green"},\
        {"text":"本局不再获得Kmax","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻穿戴上全套绑定诅咒的下界合金胸甲\n","color":"gold"},\
        {"text":"本局不再获得任何资源\n","color":"red"},\
        {"text":"不会被诅咒护甲选中","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"你不能穿戴护甲\n","color":"red"},\
        {"text":"但是\n","color":"green"},\
        {"text":"护甲值+30 攻击伤害+40%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"立刻抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏 每回合结束时\n","color":"green"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的一半 分配等额伤害于敌方玩家","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_4 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"任意你方生物死后 你都有30%概率抽一张牌","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"在回合结束时 你不再重置K\n","color":"green"},\
        {"text":"但是 每回合只能获得Kmax的50%的K","color":"gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[贪欲]","color":"white"},\
        {"text":"每1次使用贪欲增加层数->每2次使用贪欲增加层数","light_purple":"white"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[墓园狂欢]","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每击杀1个生物 增加1%攻击力","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次使用弩 增加1%弩填装速度","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次被攻击 22%概率抽一张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"每有1个队友死亡 每个友方回合开始时+25经验+8生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"gold"}],\
        "tooltip": [\
        {"text":"在你第1次死亡后复活\n","color":"gold"},\
        {"text":"复活后你不能够再增加Kmax且生命上限-20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"你的所有队友抽取2张神迹牌\n","color":"gold"},\
        {"text":"随后灵魂化身为光 每5s可朝方向发射1颗光球 治疗队友或是伤害敌人","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"每回合开始时 \n","color":"green"},\
        {"text":"扣除当前生命值的20%的真实伤害\n","color":"red"},\
        {"text":"抽4张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"你的生命值将持续恢复至等同于生命值最多的队友\n","color":"green"},\
        {"text":"(不免疫重伤)\n","color":"dark_gray"},\
        {"text":"你的生命值不会再高于生命值最多的队友\n","color":"green"},\
        {"text":"你的任意队友死亡后 你也死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得20Kmax\n 本局游戏\n","color":"green"},\
        {"text":"你每有10Kmax 友方回合开始时额外加2Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每消耗2Kmax 友方回合开始时额外加4K 抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"均衡发展","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每使用6张牌 就+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"领先思维","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得40Kmax 抽5张牌\n","color":"green"},\
        {"text":"本局不再获得Kmax","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻穿戴上全套绑定诅咒的下界合金胸甲\n","color":"gold"},\
        {"text":"本局不再获得任何资源\n","color":"red"},\
        {"text":"不会被诅咒护甲选中","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"你不能穿戴护甲\n","color":"red"},\
        {"text":"但是\n","color":"green"},\
        {"text":"护甲值+30 攻击伤害+40%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"立刻抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏 每回合结束时\n","color":"green"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的一半 分配等额伤害于敌方玩家","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_5 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"任意你方生物死后 你都有30%概率抽一张牌","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"虚空存折","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"在回合结束时 你不再重置K\n","color":"green"},\
        {"text":"但是 每回合只能获得Kmax的50%的K","color":"gray"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"不尽贪欲","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[贪欲]","color":"white"},\
        {"text":"每1次使用贪欲增加层数->每2次使用贪欲增加层数","light_purple":"white"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"墓园狂欢","color":"aqua"}],\
        "tooltip": [\
        {"text":"启用","color":"green"},\
        {"text":"[墓园狂欢]","color":"white"},\
        {"text":"每回合开始时 无消耗自动使用5张","color":"gray"},{"text":"<狂欢僵尸>","color":"blue"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1003"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"登神长阶","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每击杀1个生物 增加1%攻击力","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1004"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"火力支援","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次使用弩 增加1%弩填装速度","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1005"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 6 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"扎扎师。","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每次被攻击 22%概率抽一张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1006"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 7 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"摇曳烛火","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"每有1个队友死亡 每个友方回合开始时+25经验+8生命恢复+额外抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1007"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 8 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"复生诅咒","color":"gold"}],\
        "tooltip": [\
        {"text":"在你第1次死亡后复活\n","color":"gold"},\
        {"text":"复活后你不能够再增加Kmax且生命上限-20%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1008"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 9 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"燃己为光","color":"gold"}],\
        "tooltip": [\
        {"text":"立即死亡\n","color":"red"},\
        {"text":"你的所有队友抽取2张神迹牌\n","color":"gold"},\
        {"text":"随后灵魂化身为光 每5s可朝方向发射1颗光球 治疗队友或是伤害敌人","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1009"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 10 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"恶魔契约","color":"red"}],\
        "tooltip": [\
        {"text":"每回合开始时 \n","color":"green"},\
        {"text":"扣除当前生命值的20%的真实伤害\n","color":"red"},\
        {"text":"抽4张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1010"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 11 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"共生","color":"aqua"}],\
        "tooltip": [\
        {"text":"你的生命值将持续恢复至等同于生命值最多的队友\n","color":"green"},\
        {"text":"(不免疫重伤)\n","color":"dark_gray"},\
        {"text":"你的生命值不会再高于生命值最多的队友\n","color":"green"},\
        {"text":"你的任意队友死亡后 你也死亡","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1011"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 12 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"对冲基金","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得20Kmax 本局游戏\n","color":"green"},\
        {"text":"你每有10Kmax 友方回合开始时额外加2Kmax","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1012"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 13 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"电表倒转","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每消耗2Kmax 友方回合开始时额外加4K 抽1张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1013"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 14 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"均衡发展","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏\n","color":"green"},\
        {"text":"你每使用6张牌 就+1攻击伤害+1护甲值+0.5♥最大生命值","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1014"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 15 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"领先思维","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻获得40Kmax 抽5张牌\n","color":"green"},\
        {"text":"本局不再获得Kmax","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1015"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 16 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"守护者","color":"aqua"}],\
        "tooltip": [\
        {"text":"立刻穿戴上全套绑定诅咒的下界合金胸甲\n","color":"gold"},\
        {"text":"本局不再获得任何资源\n","color":"red"},\
        {"text":"不会被诅咒护甲选中","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1016"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 17 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"化繁为简","color":"aqua"}],\
        "tooltip": [\
        {"text":"你不能穿戴护甲\n","color":"red"},\
        {"text":"但是\n","color":"green"},\
        {"text":"护甲值+30 攻击伤害+40%","color":"red"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1017"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 18 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"卡牌集","color":"light_purple"}],\
        "tooltip": [\
        {"text":"立刻抽15张牌","color":"gold"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1018"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 19 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"终焉之行","color":"aqua"}],\
        "tooltip": [\
        {"text":"本局游戏 每回合结束时\n","color":"green"},\
        {"text":"统计本回合消耗的K/Kmax 取两值之和的一半 分配等额伤害于敌方玩家","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1019"\
        }\
    }

execute if score #system Talent_Random_Mode matches 2 if score @s Talent_Random_6 matches 20 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"永远忠诚","color":"aqua"}],\
        "tooltip": [\
        {"text":"任意你方生物死后 你都有30%概率抽一张牌","color":"green"},\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1020"\
        }\
    }