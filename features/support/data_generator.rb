module DataGenerator
  #look into adding faker (or own data generator) for names/descriptions
  def self.generate_event_title
    return Faker::Name.title
  end

  def self.generate_event_description
    return Faker::Hacker.say_something_smart
  end

  def self.generate_event_location
    event_locations = %w(Greensboro Atlanta Other)
    return event_types[rand(0..(event_locations.count - 1))]
  end

  def self.generate_event_style
    event_style = ["Lunch and Learn", "Training Class", "Webinar"]
    return event_style[rand(0..(event_style.count - 1))]
  end

  def self.generate_event_gtm_url
    return Faker::Internet.url
  end

  def self.generate_event_gtm_phone_number
    return '(' + rand(100..999).to_s + ')' + rand(100..999).to_s + '-' + rand(1000..9999).to_s
  end

  def self.generate_event_gtm_access_code
    return rand(100..999).to_s + '-' + rand(100..999).to_s + '-' + rand(100..999).to_s
  end

  def self.generate_event_date
   return (DateTime.now >> 1).strftime("%m/%d/%Y")
  end

  def self.generate_event_start_time
    s=Faker::Time.forward(20, :morning)

    random_start=Time.new(s.year, s.month, s.day, s.hour, 0, 0, "-05:00")

    return random_start.strftime("%l:%M%P").strip
  end

  def self.generate_event_end_time
    s = Faker::Time.forward(20, :evening)
    random_end=Time.new(s.year, s.month, s.day, s.hour, 0, 0, "-05:00")

    return random_end.strftime("%l:%M%P").strip
  end

  def self.generate_event_webinar_url
    return Faker::Internet.url
  end

  def self.generate_event_webinar_host
    return Faker::Name.name
  end
  
end
