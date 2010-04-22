module MacRubyScreencastsHelper
  
  Screencast = Struct.new(:date, :name, :href, :author, :company)
  
  def macruby_screencasts
    [
      Screencast.new("2010-04-10", "Introduction to MacRuby and HotCocoa", "http://thinkcode.tv/catalog/introduction-macruby/", "Renzo Borgatti", "ThinkCode.TV"),
      Screencast.new("2009-11-10", "Introduzione a MacRuby e HotCocoa (Italian)", "http://it.thinkcode.tv/catalogo/introduzione-a-macruby-e-hotcocoa/", "Renzo Borgatti", "ThinkCode.TV"),
      Screencast.new("2009-05-19", "Meet MacRuby", "http://peepcode.com/products/meet-macruby", "Geoffrey Grosenbach", "Peepcode"),
      Screencast.new("2009-05-19", "MacRuby Presentation (Free)", "http://nubyonrails.com/articles/macruby-presentation-from-rubyfest", "Geoffrey Grosenbach", "Peepcode"),
      Screencast.new("2009-05-05", "MacRuby - Bonus Track (Free)", "http://pragmaticstudio.com/screencasts/6-macruby", "Mike Clark", "Pragmatic Studio"),
      Screencast.new("2009-05-11", "Embedding MacRuby - Bonus track (Free)", "http://pragmaticstudio.com/screencasts/7-embedding-macruby", "Mike Clark", "Pragmatic Studio")      
    ]
  end
  
end

Webby::Helpers.register(MacRubyScreencastsHelper)