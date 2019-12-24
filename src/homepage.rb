def render_homepage
  body = get_template('layouts/homepage.html')
         .render 'body' => '<h1>Welcome to my Blog!</h1>'
  vars = {
    'title' => 'Homepage',
    'svelte' => true
  }
  final_render(body, vars)
end
