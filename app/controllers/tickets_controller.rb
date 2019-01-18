class TicketsController < ApplicationController

    
    def index
        @tickets = Ticket.all
    end
    
    def show
        @ticket = Ticket.find(params[:id])
        @histories = current_user.histories
        #@histories = History.all
    end
    
    def create 
        @history = History.new(history_params)
        
        if @history.save
            redirect_to dashboards_path
        else
            render 'new'
        end
   end
        
    private
    def history_params
        params.require(:ticket).permit(:name, :user_id, :event_id, :status,:order_data)

    end
    
end
