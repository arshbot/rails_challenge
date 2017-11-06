class PeopleController < ApplicationController
  def for_event
  	@people = Event.find(params[:events_id]).people 
  end

  def for_eventjson
  	people = Event.find(params[:for_event]).people
  	render json: {status: 'SUCCESS', message: 'Loaded all events', data: people}, status: :ok  
  end
end
