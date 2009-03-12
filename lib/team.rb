module MacRubyTeamHelper
  
  Member = Struct.new(:name, :affiliation, :href, :email, :summary)
  
  def render_member(member)
    html = "<p class='project_member'><strong>"
    html += (member.href ? "<a href='#{member.href}'>#{member.name}</a>" : member.name)
    html += "</strong>"
    html += "<span class='affiliation'>, #{member.affiliation}</span>" if member.affiliation
    html += "</p>"
    html
  end
  
  def team_members
    [
      Member.new("Laurent Sansonetti", "Apple, Inc.", nil, "lsansonetti@apple.com", "Project Lead"),
      Member.new("Rich Kilmer", "InfoEther, Inc.", "http://www.infoether.com", "rich@infoether.com", "HotCocoa"),
      Member.new("Ben Stiglitz", "Apple, Inc.", nil, "stig@apple.com", "All things OS X"),
      Member.new("Patrick Thomson", "Apple, Inc.", nil, "pthomson@apple.com", "All things OS X"),
      Member.new("Eloy Duran", nil, nil, "eloy.de.enige@gmail.com", "Testing")
    ]
  end
  
  Kudo = Struct.new(:name, :href, :reason)
  
  def render_kudo(kudo)
    html = "<p class='project_kudo'><strong>"
    html += (kudo.href ? "<a href='#{kudo.href}'>#{kudo.name}</a>" : kudo.name)
    html += "</strong>"
    html += "<br><span class='summary'>#{kudo.reason}</span>"
    html += "</p>"
    html
  end
  
  def kudos
    [
      Kudo.new("John Athayde", "http://www.boboroshi.com", "Website design, layout, graphics, cool icon!"),
      Kudo.new("MacOSForge", "http://macosforge.org", "Hosting the MacRuby project")
    ]
  end
end

Webby::Helpers.register(MacRubyTeamHelper)