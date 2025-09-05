execute unless score @s Talent_Combat matches 1.. run scoreboard players set @s Talent_Combat 0
execute unless score @s Talent_Survival matches 1.. run scoreboard players set @s Talent_Survival 0

execute if score @s Talent_Combat matches 0 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战斗","color":"gold"},{"text":" 未激活","color":"gray"}],\
        "tooltip": [\
        {"text":"消耗1点构想升级\n\n","color":"aqua"},\
        {"text":"1级时\n +1 攻击伤害\n +10% 攻击速度\n +20% 弩填充速度\n\n","color":"gray"},\
        {"text":"2级时\n +1 攻击伤害\n +2 护甲值\n+25% 弩填充速度\n\n","color":"gray"},\
        {"text":"3级时\n +1 攻击伤害\n +10% 击退抗性\n+30% 弩填充速度\n\n","color":"gray"},\
        {"text":"4级时\n +1 攻击伤害\n +3 护甲值\n+35% 弩填充速度\n\n","color":"gray"},\
        {"text":"5级时\n +2 攻击伤害\n +2 护甲韧性\n+40% 弩填充速度","color":"gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score @s Talent_Combat matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战斗","color":"gold"},{"text":" I","color":"gray"}],\
        "tooltip": [\
        {"text":"消耗2点构想升级\n\n","color":"aqua"},\
        {"text":"1级时\n +1 攻击伤害\n +10% 攻击速度\n +20% 弩填充速度\n\n","color":"green"},\
        {"text":"2级时\n +1 攻击伤害\n +2 护甲值\n+25% 弩填充速度\n\n","color":"gray"},\
        {"text":"3级时\n +1 攻击伤害\n +10% 击退抗性\n+30% 弩填充速度\n\n","color":"gray"},\
        {"text":"4级时\n +1 攻击伤害\n +3 护甲值\n+35% 弩填充速度\n\n","color":"gray"},\
        {"text":"5级时\n +2 攻击伤害\n +2 护甲韧性\n+40% 弩填充速度","color":"gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score @s Talent_Combat matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战斗","color":"gold"},{"text":" II","color":"gray"}],\
        "tooltip": [\
        {"text":"消耗3点构想升级\n\n","color":"aqua"},\
        {"text":"1级时\n +1 攻击伤害\n +10% 攻击速度\n +20% 弩填充速度\n\n","color":"green"},\
        {"text":"2级时\n +1 攻击伤害\n +2 护甲值\n+25% 弩填充速度\n\n","color":"green"},\
        {"text":"3级时\n +1 攻击伤害\n +10% 击退抗性\n+30% 弩填充速度\n\n","color":"gray"},\
        {"text":"4级时\n +1 攻击伤害\n +3 护甲值\n+35% 弩填充速度\n\n","color":"gray"},\
        {"text":"5级时\n +2 攻击伤害\n +2 护甲韧性\n+40% 弩填充速度","color":"gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score @s Talent_Combat matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战斗","color":"gold"},{"text":" III","color":"gray"}],\
        "tooltip": [\
        {"text":"消耗4点构想升级\n\n","color":"aqua"},\
        {"text":"1级时\n +1 攻击伤害\n +10% 攻击速度\n +20% 弩填充速度\n\n","color":"green"},\
        {"text":"2级时\n +1 攻击伤害\n +2 护甲值\n+25% 弩填充速度\n\n","color":"green"},\
        {"text":"3级时\n +1 攻击伤害\n +10% 击退抗性\n+30% 弩填充速度\n\n","color":"green"},\
        {"text":"4级时\n +1 攻击伤害\n +3 护甲值\n+35% 弩填充速度\n\n","color":"gray"},\
        {"text":"5级时\n +2 攻击伤害\n +2 护甲韧性\n+40% 弩填充速度","color":"gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score @s Talent_Combat matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战斗","color":"gold"},{"text":" IV","color":"gray"}],\
        "tooltip": [\
        {"text":"消耗5点构想升级\n\n","color":"aqua"},\
        {"text":"1级时\n +1 攻击伤害\n +10% 攻击速度\n +20% 弩填充速度\n\n","color":"green"},\
        {"text":"2级时\n +1 攻击伤害\n +2 护甲值\n+25% 弩填充速度\n\n","color":"green"},\
        {"text":"3级时\n +1 攻击伤害\n +10% 击退抗性\n+30% 弩填充速度\n\n","color":"green"},\
        {"text":"4级时\n +1 攻击伤害\n +3 护甲值\n+35% 弩填充速度\n\n","color":"green"},\
        {"text":"5级时\n +2 攻击伤害\n +2 护甲韧性\n+40% 弩填充速度","color":"gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score @s Talent_Combat matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"战斗","color":"gold"},{"text":" Max","color":"green"}],\
        "tooltip": [\
        {"text":"等级已满\n\n","color":"gold"},\
        {"text":"1级时\n +1 攻击伤害\n +10% 攻击速度\n +20% 弩填充速度\n\n","color":"green"},\
        {"text":"2级时\n +1 攻击伤害\n +2 护甲值\n+25% 弩填充速度\n\n","color":"green"},\
        {"text":"3级时\n +1 攻击伤害\n +10% 击退抗性\n+30% 弩填充速度\n\n","color":"green"},\
        {"text":"4级时\n +1 攻击伤害\n +3 护甲值\n+35% 弩填充速度\n\n","color":"green"},\
        {"text":"5级时\n +2 攻击伤害\n +2 护甲韧性\n+40% 弩填充速度","color":"green"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1001"\
        }\
    }

execute if score @s Talent_Survival matches 0 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"巧计","color":"gold"},{"text":" 未激活","color":"gray"}],\
        "tooltip": [\
        {"text":"消耗1点构想升级\n升级效果作用于每回合\n\n","color":"aqua"},\
        {"text":"1级时\n +1 抽牌\n +1 Kmax\n\n","color":"gray"},\
        {"text":"2级时\n +1 构想\n +1 Kmax\n\n","color":"gray"},\
        {"text":"3级时\n +1 抽牌\n +5♥ 生命恢复\n\n","color":"gray"},\
        {"text":"4级时\n +1 构想\n +2 Kmax\n\n","color":"gray"},\
        {"text":"5级时\n +10 经验","color":"gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score @s Talent_Survival matches 1 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"巧计","color":"gold"},{"text":" I","color":"gray"}],\
        "tooltip": [\
        {"text":"消耗1点构想升级\n升级效果作用于每回合\n\n","color":"aqua"},\
        {"text":"1级时\n +1 抽牌\n +1 Kmax\n\n","color":"green"},\
        {"text":"2级时\n +1 构想\n +1 Kmax\n\n","color":"gray"},\
        {"text":"3级时\n +1 抽牌\n +5♥ 生命恢复\n\n","color":"gray"},\
        {"text":"4级时\n +1 构想\n +2 Kmax\n\n","color":"gray"},\
        {"text":"5级时\n +10 经验","color":"gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score @s Talent_Survival matches 2 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"巧计","color":"gold"},{"text":" II","color":"gray"}],\
        "tooltip": [\
        {"text":"消耗1点构想升级\n升级效果作用于每回合\n\n","color":"aqua"},\
        {"text":"1级时\n +1 抽牌\n +1 Kmax\n\n","color":"green"},\
        {"text":"2级时\n +1 构想\n +1 Kmax\n\n","color":"green"},\
        {"text":"3级时\n +1 抽牌\n +5♥ 生命恢复\n\n","color":"gray"},\
        {"text":"4级时\n +1 构想\n +2 Kmax\n\n","color":"gray"},\
        {"text":"5级时\n +10 经验","color":"gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score @s Talent_Survival matches 3 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"巧计","color":"gold"},{"text":" III","color":"gray"}],\
        "tooltip": [\
        {"text":"消耗1点构想升级\n升级效果作用于每回合\n\n","color":"aqua"},\
        {"text":"1级时\n +1 抽牌\n +1 Kmax\n\n","color":"green"},\
        {"text":"2级时\n +1 构想\n +1 Kmax\n\n","color":"green"},\
        {"text":"3级时\n +1 抽牌\n +5♥ 生命恢复\n\n","color":"green"},\
        {"text":"4级时\n +1 构想\n +2 Kmax\n\n","color":"gray"},\
        {"text":"5级时\n +10 经验","color":"gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score @s Talent_Survival matches 4 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"巧计","color":"gold"},{"text":" IV","color":"gray"}],\
        "tooltip": [\
        {"text":"消耗1点构想升级\n升级效果作用于每回合\n\n","color":"aqua"},\
        {"text":"1级时\n +1 抽牌\n +1 Kmax\n\n","color":"green"},\
        {"text":"2级时\n +1 构想\n +1 Kmax\n\n","color":"green"},\
        {"text":"3级时\n +1 抽牌\n +5♥ 生命恢复\n\n","color":"green"},\
        {"text":"4级时\n +1 构想\n +2 Kmax\n\n","color":"green"},\
        {"text":"5级时\n +10 经验","color":"gray"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }

execute if score @s Talent_Survival matches 5 \
    run data modify storage kards dialog._."actions" append value {\
        "label": [{"text":"巧计","color":"gold"},{"text":" Max","color":"green"}],\
        "tooltip": [\
        {"text":"等级已满\n升级效果作用于每回合\n\n","color":"gold"},\
        {"text":"1级时\n +1 抽牌\n +1 Kmax\n\n","color":"green"},\
        {"text":"2级时\n +1 构想\n +1 Kmax\n\n","color":"green"},\
        {"text":"3级时\n +1 抽牌\n +5♥ 生命恢复\n\n","color":"green"},\
        {"text":"4级时\n +1 构想\n +2 Kmax\n\n","color":"green"},\
        {"text":"5级时\n +10 经验","color":"green"}\
        ],\
        "action": {\
            "type": "run_command",\
            "command": "trigger dialog set 1002"\
        }\
    }