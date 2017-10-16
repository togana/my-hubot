cronJob = require('cron').CronJob
JapaneseHolidays = require('japanese-holidays');
envelope = room: "#notice"

module.exports = (robot) ->
  cronjob = new cronJob('0 8 * * 1-5', () =>
    today = new Date();
    holiday = JapaneseHolidays.isHoliday(today);
    if(holiday)
      robot.send envelope, "今日は" + holiday +  "です."
  )
  cronjob.start()
