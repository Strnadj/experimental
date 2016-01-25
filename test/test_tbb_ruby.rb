require "minitest/autorun"
require "tbb_ruby"

describe TbbRuby do
  let(:instance) { TbbRuby.new }

  it 'has parallel sort method' do
    instance.methods.must_include :parallel_sort
  end
end
