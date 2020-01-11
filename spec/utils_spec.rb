require './src/utils'

RSpec.describe do
  context 'read_vars' do
    it 'parses article title' do
      expect(read_vars("title: 'Foo'")).to eq('title' => 'Foo')
    end
  end
end
