# GSkard



## 项目概述

GSkard 是一个完整的卡牌对战系统，包含：
- **多种卡牌类型**：基本牌、军团牌、装备牌、法术牌、神迹牌、图腾牌、诅咒牌、陷阱牌等
- **团队对战系统**：红蓝两队对抗
- **天赋系统**：丰富的玩家天赋选择
- **回合制机制**：策略性的回合制卡牌对战
- **DLC扩展**：支持自定义卡牌扩展

## 项目结构

```
GSkard-datapack/
├── GSkard-Datapack/          # 主数据包
│   ├── data/
│   │   └── kards/           # 核心游戏逻辑
│   │       ├── function/    # 游戏函数
│   │       ├── item_modifier/ # 物品修改器
│   │       ├── predicate/   # 谓词条件
│   │       ├── tags/        # 标签定义
│   │       └── loot_table/  # 战利品表
│   ├── pack.mcmeta         # 数据包元数据
│   └── pack.png            # 数据包图标
├── GSkard-Resourcepack/     # 必装资源包
│   ├── assets/             # 资源文件
│   ├── pack.mcmeta         # 资源包元数据
│   └── pack.png            # 资源包图标
├── GSkard-Resourcepack-Music/ # 可选音乐包
│   ├── assets/             # 音乐资源
│   ├── pack.mcmeta         # 音乐包元数据
│   └── pack.png            # 音乐包图标
├── GSkard-Datapack/data/kards-dlc/ # DLC扩展包
│   ├── function/           # DLC函数
│   ├── dialog/             # 对话框配置
│   └── README.md           # DLC说明文档
└── script/                 # 脚本文件
```

## DLC

查看[DLC文档](./GSkard-Datapack/data/kards-dlc/README.md)