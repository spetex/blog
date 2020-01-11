def render_article_list
  body = get_template('layouts/article_list.html')
         .render 'body' => '<h1>Articles</h1>'
  vars = {
    'title' => 'Articles',
    'svelte' => true
  }
  final_render(body, vars)
end
