package exmo.cy;

import exmo.cy.commands.*;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Scanner;

public class Main {
    public static Path mainPath;

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("=== 卡牌管理系统 ===");
        System.out.println("请输入初始文件路径：");

        String path = sc.nextLine();
        mainPath = Paths.get(path);

        // 初始化指令系统
        CommandManager commandManager = new CommandManager();
        commandManager.registerCommand("load", new ReadKardsCommand());
        commandManager.registerCommand("list", new ShowKardsCommand());
        commandManager.registerCommand("path", new SetPathCommand());
        commandManager.registerCommand("exit", new ExitCommand());
        commandManager.registerCommand("export", new ExportKardListCommand());
        commandManager.registerCommand("search", new SearchKardCommand());
        commandManager.registerCommand("statistics", new ShowStatisticsCommand());
        commandManager.registerCommand("help", new HelpCommand(commandManager));

        System.out.println("\n系统初始化完成！输入 'help' 查看命令列表");

        // 主命令循环
        while (true) {
            System.out.print("\n> ");
            String input = sc.nextLine().trim();

            if (!input.isEmpty()) {
                commandManager.executeCommand(input);
            }
        }
    }
}