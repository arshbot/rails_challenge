Rails.application.routes.draw do

  get 'events/attendees', to: 'people#for_event'

  post 'people/for_event', to: 'people#for_event'

  get 'events/', to: 'events#index'

  #Mark REST endpoints

  get 'events/all', to: 'events#all'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
