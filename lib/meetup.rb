module Meetup
  def self.next
    RMeetup::Client.api_key = "2c41256d1c5b1a33c3f2e7352205448"
    results = RMeetup::Client.fetch(:events,{:group_urlname => "sandiegocto"})
    results.each do |result|
      p result.inspect
    end
  end
end
