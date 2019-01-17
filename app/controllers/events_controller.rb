class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def show
    @event = Event.find(params[:id])
 #   @place = Place.find(params[:id])
    @tickets = Ticket.all
  end
def edit
    @event = Event.find(params[:id])
end
    
def create
    @event = Event.new(event_params)
 
  if @event.save
    redirect_to @event
  else
    render 'new'
  end
end
 
private
  def event_params
    params.require(:event).permit(:title)
  end
end
