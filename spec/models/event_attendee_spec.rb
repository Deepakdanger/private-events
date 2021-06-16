require 'rails_helper'

RSpec.describe 'Event', :type => :model do
    it "is not valid without a date" do
        event = EventAttendee.new(attendee_id: 2,event_id: 2)
        expect(event.save).not_to be true 
    end   
end