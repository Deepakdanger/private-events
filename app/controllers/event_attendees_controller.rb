class EventAttendeesController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    already_attended = event.event_attendees.find_by(attendee_id: current_user.id)

    if already_attended
      edirect_to event_path(event)
    else
      @event_attendee = event.event_attendees.build(attendee_id: current_user.id)

      @event_attendee&.save ? flash[:notice] = 'Attendee added' : flash[:alert] = 'Failed to add attendee'

    end
    redirect_to event_path(event)
  end
end
