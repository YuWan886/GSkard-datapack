package exmo.cy.commands;

import exmo.cy.Command;
import exmo.cy.KardManager;

public class ReadKardsCommand implements Command {
    @Override
    public void execute(String[] args) {
        boolean force = args.length > 0 && "force".equalsIgnoreCase(args[0]);
        KardManager.readKards(force);
    }

    @Override
    public String getDescription() {
        return "加载卡牌数据 (可添加force参数强制重新加载)";
    }
}