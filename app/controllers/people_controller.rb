class PeopleController < ApplicationController
  def for_event
  	@people = Event.find(params[:events_id]).people 
  end
end
