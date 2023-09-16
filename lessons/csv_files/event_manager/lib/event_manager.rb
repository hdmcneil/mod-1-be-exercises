# ./lib/event_manager.rb
require "csv"
require './lib/attendee'

class EventManager
  attr_reader :attendee

  def initialize
    @attendees = []
  end

  def read_csv(file_path)
    contents = CSV.open "data/event_attendees.csv", headers: true,header_converters: :symbol
    contents.each do |row|
      id = row[:id]
      first_name = row[:first_name]
      last_name = row[:last_name]
      zipcode = row[:zipcode]

    attendee = Attendee.new(id, first_name,last_name, zipcode)
    @attendees << attendee
    end
  end

  def display_attendees
    @attendees.each do |attendee|
      puts attendee.display
    end
  end

  event_manager = EventManager.new
  event_manager.read_csv("data/event_attendees.csv")
  event_manager.display_attendees
end
