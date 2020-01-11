require './src/utils'

RSpec.describe do
  context 'read_vars' do
    it 'parses article title' do
      expect(read_vars("title: 'Foo'\npublished: '2019-10-10'")['title']).to eq('Foo')
    end
    it 'parses article published' do
      expect(read_vars("published: '2019-10-10'")['published']).to eq(Date.parse('2019-10-10'))
    end
    it 'parses article tags' do
      string = "title: 'Foo'\npublished: '2019-10-10'\ntags: 'orange, keytar'"
      expect(read_vars(string)['tags']).to eq(%w[keytar orange])
    end
  end
end
