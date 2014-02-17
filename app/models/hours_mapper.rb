class HoursMapper
  attr_reader :hours

  def initialize(hours)
    hours = Array(hours)
    @hours = hours.map { |date, time|
      TrackedTime.new( date,
                       time )
    }
  end
end
