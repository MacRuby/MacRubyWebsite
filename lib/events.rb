module MacRubyEventsHelper
  
  Event = Struct.new(:date, :name, :href, :location, :topic)
  
  def macruby_events
    [
      # n/a
    ]
  end
  
end

Webby::Helpers.register(MacRubyEventsHelper)
