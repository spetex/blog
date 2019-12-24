def get_article_body(article_markdown, vars)
  MARKDOWN.render(parse_template(article_markdown).render(vars))
end

def render_article(slug)
  config, article_markdown = File.read("articles/#{slug}.md").split('#-----#')
  vars = {
    'svelte' => true
  } + read_vars(config)
  body = get_template('layouts/article.html')
         .render 'body' => get_article_body(article_markdown, vars)
  final_render(body, vars)
end
