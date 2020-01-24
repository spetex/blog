def render_not_found(response)
  response.status = 404
  body = get_template('layouts/404.html')
         .render
  vars = {
    'title' => 'Page not found!',
    'svelte' => true
  }
  final_render(body, vars)
end
