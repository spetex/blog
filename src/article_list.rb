def read_articles
  Dir.children('./articles').map do |filename|
    config, _article_markdown = read_article filename.split('.')[0]
    read_vars(config) + { 'slug' => filename.split('.')[0] }
  end
end

def format_articles(articles)
  articles.map { |article| article + { 'published' => Date.parse(article['published']) } }
          .sort_by { |article| article['published'] }
          .reverse
end

def render_article_list
  body = get_template('layouts/article_list.html')
         .render 'articles' => format_articles(read_articles)
  vars = {
    'title' => 'Articles',
    'svelte' => true
  }
  final_render(body, vars)
end
