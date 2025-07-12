package exmo.cy.commands;

import exmo.cy.Command;
import exmo.cy.KardManager;
import exmo.cy.Main;

import java.nio.file.Path;
import java.nio.file.Paths;

public class SetPathCommand implements Command {
    @Override
    public void execute(String[] args) {
        if (args.length == 0) {
            System.out.println("当前路径: " + Main.mainPath);
            return;
        }

        try {
            Path newPath = Paths.get(args[0]);
            Main.mainPath = newPath;
            System.out.println("路径已更新为: " + newPath);
            KardManager.readKards(); // 路径变更后自动重新加载
        } catch (Exception e) {
            System.out.println("无效路径: " + e.getMessage());
        }
    }

    @Override
    public String getDescription() {
        return "设置/显示卡牌数据路径";
    }
}