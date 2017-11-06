class EventsController < ApplicationController
  def attendees
  	@attendees = "Showing attendees for this event"
  end

  def index
  	@events = Event.all
  end

  def all
  	events = Event.all
  	render json: {status: 'SUCCESS', message: 'Loaded all events', data: events}, status: :ok 
    
  end
end
