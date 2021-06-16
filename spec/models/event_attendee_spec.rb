require 'rails_helper'

RSpec.describe 'Event', :type => :model do
    it "is not valid without a date" do
        event = EventAttendee.new(attendee_id: 2,event_id: 2)
        expect(event.save).not_to be true 
    end  
    
    it 'has both user and event' do
        user = User.create(email: "P@gmail.com", password: '123456')
        event = Event.create(event_name: "party", events_date: "2022/1/1", location: "home", creator_id: "user.id")
       attendee = event.event_attendees.build(attendee_id: user.id)
       expect(attendee.save).to be(true)
    end
end