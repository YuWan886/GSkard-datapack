package exmo.cy;

import com.google.gson.*;
import com.google.gson.stream.JsonReader;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.*;
import java.io.StringReader;
import java.util.*;
import java.util.regex.*;

import java.util.*;
import java.util.regex.*;

public class KardCommandParser {
    private static final Pattern ITEM_NAME_PATTERN = Pattern.compile(
            "item_name\\s*=\\s*\\[(.*?)\\]", Pattern.DOTALL
    );

    private static final Pattern LORE_PATTERN = Pattern.compile(
            "lore\\s*=\\s*\\[(.*?)\\]", Pattern.DOTALL
    );

    private static final Pattern CUSTOM_DATA_PATTERN = Pattern.compile(
            "custom_data\\s*=\\s*\\{(.*?)\\}", Pattern.DOTALL
    );

    private static final Pattern TOOLTIP_STYLE_PATTERN = Pattern.compile(
            "tooltip_style\\s*=\\s*\"(.*?)\""
    );

    private static final Pattern TOOLTIP_DISPLAY_PATTERN = Pattern.compile(
            "tooltip_display\\s*=\\s*\\{(.*?)\\}", Pattern.DOTALL
    );

    public static Map<String, String> parseCommand(String command) {
        Map<String, String> result = new HashMap<>();

        // 解析显示名称
        Matcher itemNameMatcher = ITEM_NAME_PATTERN.matcher(command);
        if (itemNameMatcher.find()) {
            result.put("item_name", parseTextComponents(itemNameMatcher.group(1)));
        }

        // 解析描述
        Matcher loreMatcher = LORE_PATTERN.matcher(command);
        if (loreMatcher.find()) {
            result.put("lore", parseLoreComponents(loreMatcher.group(1)));
        }

        // 解析自定义数据
        Matcher customDataMatcher = CUSTOM_DATA_PATTERN.matcher(command);
        if (customDataMatcher.find()) {
            String customData = customDataMatcher.group(1);
            Matcher kardsMatcher = Pattern.compile("kards\\s*:\\s*\"(.*?)\"").matcher(customData);
            if (kardsMatcher.find()) {
                result.put("kards", kardsMatcher.group(1));
            }
        }

        // 解析提示框样式
        Matcher tooltipStyleMatcher = TOOLTIP_STYLE_PATTERN.matcher(command);
        if (tooltipStyleMatcher.find()) {
            result.put("tooltip_style", tooltipStyleMatcher.group(1));
        }

        // 解析提示框显示设置
        Matcher tooltipDisplayMatcher = TOOLTIP_DISPLAY_PATTERN.matcher(command);
        if (tooltipDisplayMatcher.find()) {
            result.put("tooltip_display", tooltipDisplayMatcher.group(1));
        }

        return result;
    }

    private static String parseTextComponents(String components) {
        StringBuilder sb = new StringBuilder();
        Matcher textMatcher = Pattern.compile("\\{\\s*\"text\"\\s*:\\s*\"(.*?)\"\\s*[,\\}]").matcher(components);
        while (textMatcher.find()) {
            sb.append(textMatcher.group(1));
        }
        return sb.toString().trim();
    }

    private static String parseLoreComponents(String lore) {
        List<String> lines = new ArrayList<>();
        // 分割为行（考虑嵌套结构）
        String[] parts = lore.split(",(?![^{}]*\\})");

        for (String part : parts) {
            part = part.trim();
            if (part.startsWith("[") && part.endsWith("]")) {
                // 嵌套数组
                lines.add(parseTextComponents(part.substring(1, part.length() - 1)));
            } else if (part.startsWith("{")) {
                // 文本对象
                lines.add(parseTextComponents(part));
            } else if (part.startsWith("\"")) {
                // 简单字符串
                lines.add(part.substring(1, part.length() - 1));
            }
        }

        return String.join("\n", lines);
    }
}