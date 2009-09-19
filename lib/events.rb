module MacRubyEventsHelper
  
  Event = Struct.new(:date, :name, :href, :location, :topic)
  
  def macruby_events
    [
      Event.new("2-3 Oct 2009", "OSDC.fr", "http://act.osdc.fr/osdc2009fr/", "Paris, France", "Olivier Gutknecht presents MacRuby"),
      Event.new("13-14 Oct 2009", "Rails Summit Latin America", "http://www.railssummit.com.br/", "São Paulo, Brazil", "Rich Kilmer presents MacRuby"),
      Event.new("30-31 Oct 2009", "RubyEnRails", "http://2009.rubyenrails.nl", "Amsterdam, Netherlands", "Eloy Duran Presents MacRuby & HotCocoa"),
      Event.new("19-21 Nov 2009", "RubyConf", "http://rubyconf.org/", "San Francisco, CA", "Laurent Sansonetti presents MacRuby"),
      Event.new("19-21 Nov 2009", "RubyConf", "http://rubyconf.org/", "San Francisco, CA", "Matt Aimonetti talks about writing 2D video games with MacRuby")
    ]
  end
  
end

Webby::Helpers.register(MacRubyEventsHelper)
