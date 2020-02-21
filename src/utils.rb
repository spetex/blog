require 'liquid'
require 'redcarpet'

class Hash; alias + merge end

MARKDOWN_EXTENSIONS = {
  autolink: true,
  disable_indented_code_blocks: true,
  fenced_code_blocks: true,
  footnotes: true,
  highlight: true,
  lax_spacing: true,
  no_intra_emphasis: true,
  quote: true,
  space_after_headers: true,
  strikethrough: true,
  superscript: true,
  tables: true,
  underline: true
}.freeze
MARKDOWN = Redcarpet::Markdown.new(Redcarpet::Render::HTML, MARKDOWN_EXTENSIONS)

def parse_template(template)
  Liquid::Template.parse(template)
end

def get_template(path)
  parse_template(File.read(path))
end

def final_render(body, vars = {})
  footer = get_template('layouts/footer.html').render

  get_template('layouts/index.html')
    .render({ 'body' => body, 'footer' => footer } + vars)
end

def read_vars(config)
  parsed_config = config.split("\n").map { |line| line.delete_suffix("'").split(': \'') }.to_h
  if parsed_config['tags']
    tags = parsed_config['tags'].split(',').map { |tag| tag.delete_prefix(' ') }.sort
  end
  parsed_config + { 'published' => Date.parse(parsed_config['published']), 'tags' => tags }
end

def read_article(slug)
  File.read("articles/#{slug}.md").split('#-----#')
end
