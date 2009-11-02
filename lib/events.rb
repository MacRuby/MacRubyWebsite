module MacRubyEventsHelper
  
  Event = Struct.new(:date, :name, :href, :location, :topic)
  
  def macruby_events
    [
      Event.new("19-21 Nov 2009", "RubyConf", "http://rubyconf.org/", "San Francisco, CA", "Laurent Sansonetti presents MacRuby"),
      Event.new("19-21 Nov 2009", "RubyConf", "http://rubyconf.org/", "San Francisco, CA", "Matt Aimonetti talks about writing 2D video games with MacRuby")
    ]
  end
  
end

Webby::Helpers.register(MacRubyEventsHelper)
