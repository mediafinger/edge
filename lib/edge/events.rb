module Edge
  class Events
    include HTTParty

    def self.events
      get("/events.json").parsed_response
    end

    def self.events_in(country, year)
      result = get("/events.json?country=#{country}&year=#{year}")
      HashWithIndifferentAccess.new(result.present? ? result["event"] : nil)
    end

    def self.local_events(city)
      get("/events.json?city=#{city}").parsed_response
    end

    def self.create_event(attributes)
      attributes = {
        :user_id => current_user.id
      }.merge(attributes)

      post('/events', :body => { :event => attributes })
    end

    def self.events_for(attributes)
      attributes = {
        :audience => 'Fachpublikum',
      }.merge(attributes)

      get("/events/#{attributes[:event_id]}/do_something.json", :query => attributes)
    end
  end
end


if defined?(Rails)
  Edge::Events.tap do |config|
    config.base_uri 'http://events.test/'   # Tests and funny fallback

  #  config.base_uri 'http://edge-back.herokuapp.com/'               if Rails.env == "production"
  #  config.base_uri 'http://edge-back-staging.herokuapp.com/'       if Rails.env == "staging"
  #  config.base_uri 'http://edge-back-integration.herokuapp.com/'   if Rails.env == "integration"
  #  config.base_uri 'http://events.dev/' 
    config.base_uri 'http://localhost:4000'                            if Rails.env == "development"      
  end
end