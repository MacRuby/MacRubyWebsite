module BlogUtilsHelper
  
  def blog_excerpt(page)
    render(page) unless page.excerpt
    excerpt = "#{blog_date(page)} &raquo; #{page.excerpt} <a href='#{page.url}'>Read more...</a>"
    RedCloth.new(excerpt).to_html
  end
  
  def blog_date(page)
    "<span class='date'>#{page.created_at.strftime('%Y-%m-%d')}</span>"
  end
  
  def new_or_updated_indicator(page)
    if (Time.now - page.created_at) < 1209600
      "<span class='new_page'>[NEW]</span>"
    elsif (Time.now - page.updated_at) < 1209600
      "<span class='updated_page'>[UPDATED]</span>"
    end
  end
  
end

Webby::Helpers.register(BlogUtilsHelper)