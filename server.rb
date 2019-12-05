require 'roda'

class BlogApp < Roda
  route do |r|
    r.on '' do
      'Welcome to my Blog!'
    end
    r.on do
      '404: Not found'
    end
  end
end
