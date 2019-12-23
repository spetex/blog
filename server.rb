require 'roda'
require 'liquid'
require 'redcarpet'

class Hash; alias + merge end

def read_vars(config)
  lines = config.split(/\n/)
  parsed_config = {}

  lines.each do |line|
    pair = line.split(': \'')
    parsed_config[pair[0]] = pair[1].delete_suffix('\'')
  end

  parsed_config
end

class BlogApp < Roda
  plugin :public

  article_template = Liquid::Template.parse(File.read('layouts/article.html'))
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

  route do |r|
    r.on '' do
      'Welcome to my Blog!'
    end

    r.on 'article', String do |article_slug|
      return '404: Not found' unless File.exist? "articles/#{article_slug}.md"

      config, article = File.read("articles/#{article_slug}.md").split('---')
      vars = read_vars config

      article_markdown = Liquid::Template
                         .parse(article)
                         .render(vars)

      html_body = markdown.render(article_markdown)
      article_template.render({ 'body' => html_body } + vars)
    end

    r.on 'public' do
      r.public
    end

    r.on do
      '404: Not found'
    end
  end
end
