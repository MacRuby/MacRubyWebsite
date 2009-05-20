module MacRubyEventsHelper
  
  Event = Struct.new(:date, :name, :href, :location, :topic)
  
  def macruby_events
    [
      Event.new("25-27 May 2009", "RailsWayCon", "http://it-republik.de/konferenzen/railswaycon/sessions/railswaycon/speaker/#3873", "Berlin, Germany", "Thilo Utke Presents MacRuby & HotCocoa"),
      Event.new("17-19 July 2009", "RubyKaigi", "http://rubykaigi.org/2009/en", "Tokyo, Japan", "Vincent Presents MacRuby"),
      Event.new("27-29 Aug 2009", "Lone Star Ruby Conference", "", "Austin, Texas, USA", "Rich Gives a MacRuby & HotCocoa Tutorial")
    ]
  end
  
end

Webby::Helpers.register(MacRubyEventsHelper)
