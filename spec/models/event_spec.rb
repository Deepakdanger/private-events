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

  it 'should have many attendees' do
    a = Event.reflect_on_association(:attendees)
    expect(a.macro).to eq(:has_many)
  end

  it 'should belong to a creator' do
    a = Event.reflect_on_association(:creator)
    expect(a.macro).to eq(:belongs_to)
  end
end
