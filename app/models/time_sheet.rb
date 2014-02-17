class TimeSheet
  # sheet
  attr_reader :sheet

  def initialize(date_range)
    @sheet = TimeTracker::TimeSheet.new(date_range: date_range)
  end

  def total_hours
    sheet.total_hours
  end

  def total_dollars
    sheet.hours_per_project.map { |project, times|
      dollars = project == "DevChat.tv" ? 35 : 50
      times.inject(0.0) { |total, time|
        total += time.hours * dollars
      }
    }.inject(0.0, :+)
  end

  def total_pesos
    total_dollars * CurrencyRate.new.pesos
  end
end
