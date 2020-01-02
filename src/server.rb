require 'roda'

require './src/article'
require './src/utils'
require './src/not_found'
require './src/homepage'

class BlogApp < Roda
  plugin :public

  route do |r|
    # HOMEPAGE
    r.on '' do
      render_homepage
    end
    # ARTICLE
    r.on 'articles', String do |article_slug|
      return render_not_found response unless File.exist? "articles/#{article_slug}.md"

      render_article article_slug
    end
    # PUBLIC
    r.public
    # NOT FOUND
    r.on do
      render_not_found response
    end
  end
end
