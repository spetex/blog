require 'liquid'
require 'redcarpet'

class Hash; alias + merge end
MARKDOWN = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

def parse_template(template)
  Liquid::Template.parse(template)
end

def get_template(path)
  parse_template(File.read(path))
end

def final_render(body, vars = {})
  get_template('layouts/index.html')
    .render({ 'body' => body } + vars)
end

def read_vars(config)
  lines = config.split(/\n/)
  parsed_config = {}

  lines.each do |line|
    pair = line.split(': \'')
    parsed_config[pair[0]] = pair[1].delete_suffix('\'')
  end

  parsed_config
end
