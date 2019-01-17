class HisoriesController < ApplicationController
  before_action :authenticate_user!
  def index
      @histories = History.all
  end
  def show
    @histories = History.all
  end

  def create
    @ticket = Order.create!(user: current_user, ticket: ticket)
    if @order
      save_to_history
    end
  end

  def save_to_history
    History.create!(user: current_user, order_data: Date.today, event_id:"7", status:"pay")
  end

