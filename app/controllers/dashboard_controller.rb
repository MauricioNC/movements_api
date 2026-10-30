class DashboardController < ApplicationController
  def index
  end

  def data
    @pagy, @records = pagy(:keyset, Movement.order(:asc).all)
  end
end
