Rails.application.routes.draw do
  devise_for :users

  root 'home#index'


  resources :dashboards, :events, :tickets
  resources :histories do
    collection do
    post :save_to_history
    end
  end

#KArola:
  resources :dashboards, :events, :tickets, :places, :histories

end
