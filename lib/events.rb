module MacRubyEventsHelper
  
  Event = Struct.new(:date, :name, :href, :location, :topic)
  
  def macruby_events
    [
      Event.new("17-18 Apr 2009", "Golden Gate Ruby Conference", "http://gogaruco.com/schedule/index.html#kilmer", "San Francisco, CA, USA", "Rich Presents MacRuby & HotCocoa"),
      Event.new("15-16 May 2009", "Ruby on OS X", "http://www.rubyonosx.com/", "Amsterdam, Holland, The Netherlands", "Laurent &amp; Rich Presenting MacRuby and Hotcocoa"),
      Event.new("27-29 Aug 2009", "Lone Star Ruby Conference", "", "Austin, Texas, USA", "Rich Give MacRuby & HotCocoa Tutorial")
    ]
  end
  
end

Webby::Helpers.register(MacRubyEventsHelper)