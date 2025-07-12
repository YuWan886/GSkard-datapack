package exmo.cy;

import java.nio.file.Path;

public record Kard(
        String id,
        KardType kardType,
        Path path,
        String displayName,  // 解析后的显示名称
        String description,  // 解析后的描述文本
        String kardEffect,   // 卡牌效果
        String tooltipStyle, // 提示框样式
        String tooltipDisplay // 提示框显示设置
) {
    public static enum KardType {
        FASHU("法术"),
        SHENJI("神迹"),
        JIBEN("基本"),
        JUNTUAN("军团"),
        XIANJIN("陷阱"),
        ZHUANGBEI("装备"),
        TUTENG("图腾"),
        YANSHENG("衍生"),
        ZUZHOU("诅咒"),
        UNKNOWN("未知");

        private final String chineseName;

        KardType(String chineseName) {
            this.chineseName = chineseName;
        }

        public String getChineseName() {
            return chineseName;
        }
    }

    // 获取基础文件名（不含扩展名）
    public String fileName() {
        return path.getFileName().toString().replace(".json", "");
    }
}