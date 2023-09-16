require 'csv'

class Attendee
  attr_reader :id,
              :first_name,
              :last_name,
              :zipcode

  def initialize(id, first_name, last_name, zipcode)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @zipcode = clean_zipcode(zipcode)
  end

  def display
    puts "#{id}: #{first_name} #{last_name}, #{zipcode}"
  end

  def name
    name = [first_name.to_s, last_name.to_s].join(" ") 
  end

  def clean_zipcode(zipcode)
    zipcode.to_s.rjust(5,"0")[0..4]
  end
end
