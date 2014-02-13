class TimeTrackerController < ApplicationController
  def index
    hours = TimeTracker::TimeSheet.new.hours
    render "index", locals: { hours: hours }
  end
end
