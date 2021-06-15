class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User'

    has_many :event_attendees
    has_many :attendees, through: :event_attendees, source: "attendee"

    validates :event_name, presence: true
    validates :events_date, presence: true
    validates :location, presence: true
end
