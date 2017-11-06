Rails.application.routes.draw do

  get 'events/attendees', to: 'people#for_event'

  get 'events/', to: 'events#index'

  #Mark REST endpoints

  get 'events/all', to: 'events#all'

  get 'people/:for_event', to: 'people#for_eventjson'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
