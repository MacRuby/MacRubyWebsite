module MacRubyEventsHelper
  
  Event = Struct.new(:date, :name, :href, :location, :topic)
  
  def macruby_events
    [
      Event.new("27-29 Aug 2009", "Lone Star Ruby Conference", "", "Austin, Texas, USA", "Rich Gives a MacRuby & HotCocoa Tutorial")
    ]
  end
  
end

Webby::Helpers.register(MacRubyEventsHelper)