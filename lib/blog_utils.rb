module BlogUtilsHelper
  
  def blog_excerpt(page)
    render(page) unless page.excerpt
    excerpt = "#{blog_date(page)} &raquo; #{page.excerpt} <a href='#{page.url}'>Read more...</a>"
    RedCloth.new(excerpt).to_html
  end
  
  def blog_date(page)
    "<span class='date'>#{page.created_at.strftime('%Y-%m-%d')}</span>"
  end
  
end

Webby::Helpers.register(BlogUtilsHelper)