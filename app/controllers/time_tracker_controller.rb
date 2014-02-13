class TimeTrackerController < ApplicationController
  def index
    hours = TimeSheet.new.hours
    render "index", locals: { hours: hours }
  end
end
