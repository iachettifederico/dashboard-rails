class Pepe
  attr_reader :date_range


  def initialize
    @date_range = DateRange.new("12-06-1981", "13-09-1982")
  end
end
