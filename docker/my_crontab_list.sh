# ##############短期活动##############
# 每隔30分钟生成一次互助码
# 0,30 * * * * sh -x /scripts/logs/custom_js/proc_file.sh |ts >> /scripts/logs/export.log 2>&1
# 1,31 * * * * node /scripts/logs/custom_js/jdShareCodes.js |ts >> /scripts/logs/export.log 2>&1

# 执行自定义脚本
2,32 * * * * sh -x /scripts/logs/custom_js/custom.sh |ts >> /scripts/logs/export.log 2>&1

# git更新后去掉随机互助
10 8 * * * sh -x /scripts/logs/custom_js/custom.sh |ts >> /scripts/logs/export.log 2>&1

# 2,32 * * * * source /scripts/logs/custom_js/env.sh