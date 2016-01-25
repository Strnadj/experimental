require "minitest/autorun"
require "tbb_ruby"
require 'byebug'

describe TbbTaskGroup do
  let(:instance) { TbbTaskGroup.new }

  it 'has add task method' do
    instance.methods.must_include :addTask
  end

  it 'task method accept block' do
    ret = instance.addTask do
      puts "AHOJ"
    end

    ret.must_equal 5
  end
end
