class TimeTrackerController < ApplicationController
  def index
    hours = [["01/01", 10],
             ["02/01", 10],
             ["03/01", 10],
             ["04/01", 10],
             ["07/01", 10],
             ["09/01", 10],
             ["12/01", 10],
             ["15/01", 50],
             ["18/01", 50],
             ["19/01", 50],
             ["20/01", 50],
             ["21/01", 50],
             ["23/01", 50],
             ["25/01", 50],
             ["26/01", 50],
             ["27/01", 50],
             ["28/01", 50]].map { |date, multiplier|
      hours = rand(1.0..6.0)
      OpenStruct.new(date: "29/01", hours: hours, dollars: hours*multiplier/10)
    }
    render "index", locals: { hours: hours }
  end
end
