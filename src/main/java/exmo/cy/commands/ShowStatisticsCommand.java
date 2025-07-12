package exmo.cy.commands;

import exmo.cy.Command;
import exmo.cy.KardManager;

public class ShowStatisticsCommand implements Command {
    @Override
    public void execute(String[] args) {

        KardManager.showStatistics();
    }

    @Override
    public String getDescription() {
        return "卡牌统计";
    }
}