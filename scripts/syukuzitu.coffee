cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronjob = new cronJob('*/5 * * * *', () =>
    envelope = room: "#twitter"
    robot.send envelope, "投稿 @togana"
  )
  cronjob.start()
