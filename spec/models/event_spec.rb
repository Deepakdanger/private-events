require 'rails_helper'

RSpec.describe 'Event', type: :model do
  it 'is not valid without a date' do
    event = Event.new(event_name: 'event', location: 'home', creator_id: 2)
    expect(event.save).to be(false)
  end

  it 'is not valid without a location' do
    event = Event.new(event_name: 'event', events_date: '2/2/2', creator_id: 2)
    expect(event.save).to be(false)
  end

  it 'is valid with a date,name & location' do
    event1 = Event.new(event_name: 'event', events_date: '2/2/2', location: 'home', creator_id: 2)
    expect(event1.save).to be true
  end
end
