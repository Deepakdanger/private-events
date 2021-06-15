class EventAttendeesController < ApplicationController
    def create
        event = Event.find(params[:event_id])
        @event_attendee = event.event_attendee.build(attendee_id: current_user.id)
    end
end
