module MacRubyTeamHelper
  
  Member = Struct.new(:handle, :name, :affiliation, :href, :email, :summary)
  
  def render_member(member)
    html = "<p class='project_member'>"
    html += (member.href ? "<a href='#{member.href}'>#{member.name}</a>" : member.name)
    #html += "<span class='affiliation'>, #{member.affiliation}</span>" if member.affiliation
    html += "</p>"
    html
  end
  
  def team_members
    [
      Member.new("lrz", "Laurent Sansonetti", "Apple, Inc.", nil, "lsansonetti@apple.com", "Project Lead"),
      Member.new("rich", "Rich Kilmer", "InfoEther, Inc.", "http://www.infoether.com", "rich@infoether.com", "HotCocoa"),
      Member.new("ben", "Ben Stiglitz", "Apple, Inc.", nil, "stig@apple.com", "All things OS X"),
      Member.new("patrick", "Patrick Thomson", "Apple, Inc.", nil, "pthomson@apple.com", "All things OS X"),
      Member.new("eloy", "Eloy Duran", nil, nil, "eloy.de.enige@gmail.com", "Testing"),
      Member.new("vincent", "Vincent Isambart")
    ]
  end
  
  def member_name(member_handle)
    member = team_members.detect { |member| member.handle == member_handle }
    member ? member.name : member_handle
  end
  
  Kudo = Struct.new(:name, :href, :reason)
  
  def render_kudo(kudo)
    html = "<p class='project_kudo'>"
    html += (kudo.href ? "<a href='#{kudo.href}'>#{kudo.name}</a>" : kudo.name)
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