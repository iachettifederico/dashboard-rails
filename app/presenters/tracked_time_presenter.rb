class TrackedTimePresenter < RailsPresenter::Base
  def date
    date.strftime("%b-%d")
  end

end
