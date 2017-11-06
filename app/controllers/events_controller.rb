class EventsController < ApplicationController
  def attendees
  	@attendees = "Showing attendees for this event"
  end

  def index
  	@events = Event.all
  end

#   def create
# =begin
#   	@event = Event.new(params[:event])
# 	@organizers = Organizer.where(:id => params[:organizing_team])
# 	@event.organizers << @organizers 
# =end
# 	#associate the selected organizers to the event and create records in the join table
#   end 

#   def update
#   	def update
# 	@event = Event.find(params[:id])
# 	@person = Organizer.where(:id => params[:organizing_team])
# 	@event.organizers.destroy_all   #disassociate the already added organizers
# 	@event.organizers << @organizers 
# 	#associate the selected organizers to the event and create records in the join table
#   end

end
