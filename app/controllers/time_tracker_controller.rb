class TimeTrackerController < ApplicationController
  def index
    range   = TimeTracker::DateRange.new("01-01-2014", "31-01-2014")
    tracker = TimeTracker::TimeSheet.new(date_range: range)
    hours   = HoursMapper.new(tracker.total_hours_per_date).hours
    today   = DateTime.now.strftime("%d-%m-%Y")
    sheet   = TimeSheet.new(TimeTracker::DateRange.new(today, today))
    render "index", locals: { summary: sheet, hours: hours }
  end
end
