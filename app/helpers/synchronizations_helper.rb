module SynchronizationsHelper
  def synchronization_time(synchronization)
    time = Cron2English.parse(synchronization['cron'])
   time[1].humanize + ' at ' + time[0]
  end
end
