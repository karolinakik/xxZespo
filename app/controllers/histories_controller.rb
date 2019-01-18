class HisoriesController < ApplicationController
  before_action :authenticate_user!
  def index
      @histories = History.all
  end
  def show
    @histories = History.all
  end

  def create
    @ticket = Order.new(user: current_user, ticket: ticket)
    if @ticket.save
      save_to_history
      redirect_to redirect_to histories_path
    end
  end

  def save_to_history
    History.create!(user: current_user, order_data: Date.today, event_id:"7", status:"pay")
  end

