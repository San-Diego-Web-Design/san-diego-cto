require 'rMeetup'

module Meetup
  class Event
    def self.next
      RMeetup::Client.api_key = "2c41256d1c5b1a33c3f2e7352205448"
      results = RMeetup::Client.fetch(:events,{:zip => "92121"})
      results.each do |result|
        p result.inspect
      end
    end
  end
end

Meetup::Event.next
