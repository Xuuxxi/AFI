package com.kob.botrunningsystem.service.utils;


import java.util.List;

/**
 * @Author: Xuuxxi
 * @Date: 2022/9/25
 */
public class Bot implements com.kob.botrunningsystem.service.utils.BotAi {

    @Override
    public Integer nextStep(List<Integer> ownBoard, List<Integer> otherBoard, Integer figure) {
        for (int i = 0; i < ownBoard.size(); i++) {
            if (ownBoard.get(i) == 0) return i;
        }

        return -1;
    }
}