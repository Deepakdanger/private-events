require 'rails_helper'

RSpec.describe 'Event', type: :model do
  it 'should have an event' do
    event = EventAttendee.new(attendee_id: 2)
    expect(event.save).to be(false)
  end
  it 'should have an attendee' do
    event = EventAttendee.new(event_id: 1)
    expect(event.save).to be(false)
  end
  it 'should have an attendee and an event' do
    event = EventAttendee.new(event_id: 1, attendee_id: 1)
    expect(event.save).to be(true)
  end
end
