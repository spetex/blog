def get_articles
  Dir.children('./articles')
  .map do |filename|
    config, article_markdown = read_article filename.split('.')[0]
    read_vars(config) + { 'slug' => filename.split('.')[0] }
  end
end

def render_article_list
  body = get_template('layouts/article_list.html')
         .render 'articles' => get_articles
  vars = {
    'title' => 'Articles',
    'svelte' => true
  }
  final_render(body, vars)
end
