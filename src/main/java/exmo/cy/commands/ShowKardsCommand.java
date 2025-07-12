package exmo.cy.commands;

import exmo.cy.Command;
import exmo.cy.KardManager;

public class ShowKardsCommand implements Command {
    @Override
    public void execute(String[] args) {
        KardManager.showKards();
    }

    @Override
    public String getDescription() {
        return "显示已加载的卡牌列表";
    }
}
