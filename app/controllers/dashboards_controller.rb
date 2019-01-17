class DashboardsController < ApplicationController

  def index

    @histories = History.all
  end
    
  def show
    @histories = History.all
  end

end
