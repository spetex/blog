def render_homepage
  body = get_template('layouts/homepage.html')
         .render 'articles' => read_articles.sort_by { |article| article['published'] }.reverse
  vars = {
    'title' => 'Homepage',
    'svelte' => true
  }
  final_render(body, vars)
end
