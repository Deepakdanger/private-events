require 'rails_helper'

RSpec.describe 'Event model tests', :type => :model do
    it "is not valid without a date" do
        event = Event.new(event_name:'event', location: 'home')
        expect(event.save).to be(false)
    end
end