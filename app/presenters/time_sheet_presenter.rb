class TimeSheetPresenter < RailsPresenter::Base
  def total_hours
    "#{hours}:#{minutes}"
  end

  def total_dollars
    h.number_to_currency(super)
  end

  def total_pesos
    h.number_to_currency(super)
  end

  def currency_rate
    "1 USD = #{h.number_to_currency(CurrencyRate.new.pesos)}"
  end

  private

  def hours
    target.total_hours.to_i
  end

  def minutes
    ((target.total_hours - hours) * 60).to_i
  end
end
