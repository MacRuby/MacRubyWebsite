module MacRubyEventsHelper
  
  Event = Struct.new(:date, :name, :href, :location, :topic)
  
  def macruby_events
    [
      Event.new("18 Oct 2009", "RubyConf 2009", "http://www.rubyconf.com", "Orlando, Florida", "Laurent Presents MacRuby 1.0"),
      Event.new("17-18 Apr 2009", "Golden Gate Ruby Conference", "http://gogaruco.com/schedule/index.html#kilmer", "San Francisco", "Rich Presents MacRuby & HotCocoa")
    ]
  end
  
end

Webby::Helpers.register(MacRubyEventsHelper)