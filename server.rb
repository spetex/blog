require 'roda'
require 'liquid'
require 'redcarpet'

class Hash; alias + merge end
MARKDOWN = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

def read_vars(config)
  lines = config.split(/\n/)
  parsed_config = {}

  lines.each do |line|
    pair = line.split(': \'')
    parsed_config[pair[0]] = pair[1].delete_suffix('\'')
  end

  parsed_config
end

def parse_template(template)
  Liquid::Template.parse(template)
end

def get_template(path)
  parse_template(File.read(path))
end

def get_article_body(article_markdown, vars)
  MARKDOWN.render(parse_template(article_markdown).render(vars))
end

def final_render(body, vars = {})
  get_template('layouts/index.html')
    .render({ 'body' => body } + vars)
end

def render_not_found(response)
  response.status = 404
  body = get_template('layouts/404.html')
         .render
  vars = {
    'title' => 'Page not found!'
  }
  final_render(body, vars)
end

def render_article(slug)
  config, article_markdown = File.read("articles/#{slug}.md").split('---')
  vars = {
    'svelte' => true
  } + read_vars(config)
  body = get_template('layouts/article.html')
         .render 'body' => get_article_body(article_markdown, vars)
  final_render(body, vars)
end

def render_homepage
  body = get_template('layouts/homepage.html')
         .render 'body' => '<h1>Welcome to my Blog!</h1>'
  vars = {
    'title' => 'Homepage',
    'svelte' => true
  }
  final_render(body, vars)
end

class BlogApp < Roda
  plugin :public

  route do |r|
    # HOMEPAGE
    r.on '' do
      render_homepage
    end
    # ARTICLE
    r.on 'article', String do |article_slug|
      return render_not_found response unless File.exist? "articles/#{article_slug}.md"

      render_article article_slug
    end
    # PUBLIC
    r.on 'public' do
      r.public
    end
    # NOT FOUND
    r.on do
      render_not_found response
    end
  end
end
