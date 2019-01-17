class TicketsController < ApplicationController

    
    def index
        @tickets = Ticket.all
    end
    
    def show
        @ticket = Ticket.find(params[:id])
        @histories = History.all
    end
    
    def create 
        history = History.new(history_params)
        
        if @history.save
            redirect_to @dashboard
        else
            render 'new'
        end
   end
        
    private
    def history_params
        params.require(:ticket).permit(:name)
    end
    
end
