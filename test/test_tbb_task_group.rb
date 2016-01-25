require "minitest/autorun"
require "tbb_ruby"
require 'byebug'

describe TbbTaskGroup do
  let(:instance) { TbbTaskGroup.new }

  it 'has add task method' do
    instance.methods.must_include :addTask
  end

  it 'task method accept block' do
    class TmpTest
      def execute
        puts "ahoj"
      end
    end

    g = TmpTest.new

    ret = instance.addTask(g)

    puts "Ret: #{ret}\n"

    ret.must_equal 5
  end
end
