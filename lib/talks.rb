module MacRubyTalksHelper
  
  Talk = Struct.new(:date, :location, :name, :href, :author, :slides_href)
  
  def macruby_screencasts
    [
      Talk.new("2009-04-22", "GoGaruCo",  "MacRuby and HotCocoa (slides only)",           "http://www.slideshare.net/mattetti/macruby-hotcocoa-presentation-by-rich-kilmer", "Rich Kilmer", nil),
      Talk.new("2009-01-13", "SDRuby",    "MacRuby: What's the big deal?",                "http://sdruby.com/podcast/58", "Matt Aimonetti", "http://www.slideshare.net/mattetti/macruby-when-objectivec-and-ruby-meet"),
      Talk.new("2009-11-07", "RubyConf",  "OS X Application Development with HotCocoa",   "http://rubyconf2008.confreaks.com/os-x-application-development-with-hotcocoa.html", "Rich Kilmer", nil),
      Talk.new("2009-11-06", "RubyConf",  "MacRuby: Ruby for your Mac",                   "http://rubyconf2008.confreaks.com/macruby-ruby-for-your-mac.html", "Laurent Sansonetti", nil)      
    ]
  end
  
end

Webby::Helpers.register(MacRubyTalksHelper)