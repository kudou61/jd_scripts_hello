# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect |ts >> /scripts/logs/auto_help_collect.log 2>&1

##############短期活动##############

##############长期活动##############
# 签到
7 0,17 * * * cd /scripts &&  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && ts-node  jd_bean_sign.ts >> /scripts/logs/jd_bean_sign.log 2>&1
# 东东超市兑换奖品
0,30 0 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_blueCoin.js |ts >> /scripts/logs/jd_blueCoin.log 2>&1
# 摇京豆
6 0,23 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_club_lottery.js |ts >> /scripts/logs/jd_club_lottery.log 2>&1
# 东东农场
15 6-18/6 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_fruit.js |ts >> /scripts/logs/jd_fruit.log 2>&1
# 汽车兑换
6 0,23 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_car_exchange.js |ts >> /scripts/logs/jd_car_exchange.log 2>&1
# 宠汪汪 #摇钱树 #京东种豆得豆 #京喜工厂 #东东工厂 #电竞经理
3 */1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_joy_new.js |ts >> /scripts/logs/jd_joy_new.log 2>&1
3 */1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_moneyTree.js |ts >> /scripts/logs/jd_moneyTree.log 2>&1
3 */1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_plantBean.js |ts >> /scripts/logs/jd_plantBean.log 2>&1
3 */1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_dreamFactory.js |ts >> /scripts/logs/jd_dreamFactory.log 2>&1
3 */1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_jdfactory.js |ts >> /scripts/logs/jd_jdfactory.log 2>&1
3 */1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_EsportsManager.js |ts >> /scripts/logs/jd_EsportsManager.log 2>&1
#宠汪汪积分兑换京豆 #签到领现金 #点点券 #东东小窝 #京喜财富岛 #京东直播 #5G超级盲盒
0 0-16/8,20 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_joy_reward_new.js |ts >> /scripts/logs/jd_joy_reward_new.log 2>&1
0 0-16/8,20 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_cash.js |ts >> /scripts/logs/jd_cash.log 2>&1
0 0-16/8,20 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_necklace_new.js |ts >> /scripts/logs/jd_necklace_new.log 2>&1
0 0-16/8,20 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_small_home.js |ts >> /scripts/logs/jd_small_home.log 2>&1
0 0-16/8,20 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && ts-node  /scripts/jd_cfd.ts >> /scripts/logs/jd_cfd.log 2>&1
0 0-16/8,20 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_live.js |ts >> /scripts/logs/jd_live.log 2>&1
0 0-16/8,20 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_mohe.js |ts >> /scripts/logs/jd_mohe.log 2>&1
#京东全民开红包 #进店领豆 #取关京东店铺商品 #京东汽车 #京东秒秒币
10 0 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_redPacket.js |ts >> /scripts/logs/jd_redPacket.log 2>&1
10 0 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_shop.js |ts >> /scripts/logs/jd_shop.log 2>&1
10 0 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_unsubscribe.js |ts >> /scripts/logs/jd_unsubscribe.log 2>&1
10 0 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_car.js |ts >> /scripts/logs/jd_car.log 2>&1
10 0 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_ms.js |ts >> /scripts/logs/jd_ms.log 2>&1
#天天提鹅 #京喜牧场
8 */3 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_daily_egg.js |ts >> /scripts/logs/jd_daily_egg.log 2>&1
8 */3 * * *  . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && ts-node  /scripts/jd_jxmc.ts >> /scripts/logs/jd_jxmc.log 2>&1
#东东超市 #十元街 #翻翻乐
15 */1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_superMarket.js |ts >> /scripts/logs/jd_superMarket.log 2>&1
15 */1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_syj.js |ts >> /scripts/logs/jd_syj.log 2>&1
15 */1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_big_winner.js |ts >> /scripts/logs/jd_big_winner.log 2>&1
#京豆变动通知 #疯狂的joy #监控crazyJoy分红 #京东排行榜 #领京豆额外奖励 #京东保价 #闪购盲盒
30 7 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_bean_change.js |ts >> /scripts/logs/jd_bean_change.log 2>&1
30 7 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_crazy_joy.js |ts >> /scripts/logs/jd_crazy_joy.log 2>&1
30 7 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_crazy_joy_bonus.js |ts >> /scripts/logs/jd_crazy_joy_bonus.log 2>&1
30 7 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_rankingList.js |ts >> /scripts/logs/jd_rankingList.log 2>&1
30 7 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_bean_home.js |ts >> /scripts/logs/jd_bean_home.log 2>&1
30 7 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_price.js |ts >> /scripts/logs/jd_price.log 2>&1
30 7 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_sgmh.js |ts >> /scripts/logs/jd_sgmh.log 2>&1
#金融养猪 #京东快递 #京东赚赚 #京东极速版红包 #领金贴
3 1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_pigPet.js |ts >> /scripts/logs/jd_pigPet.log 2>&1
3 1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_kd.js |ts >> /scripts/logs/jd_kd.log 2>&1
3 1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_jdzz.js |ts >> /scripts/logs/jd_jdzz.log 2>&1
3 1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_speed_redpocke.js |ts >> /scripts/logs/jd_speed_redpocke.log 2>&1
3 1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node  /scripts/jd_jin_tie.js |ts >> /scripts/logs/jd_jin_tie.log 2>&1#docker挂载自定义shell脚本追加定时任务

# 必须要的默认定时任务请勿删除
7 3 * * * docker_entrypoint.sh |ts >> /scripts/logs/default_task.log 2>&1
