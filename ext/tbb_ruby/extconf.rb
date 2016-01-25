# Compile code with Rice!
require 'rubygems'
require 'mkmf-rice'
require 'byebug'

# Requires std-c11
$CFLAGS << ' --std=c++11'

# Process arguments
dir_config('tbb')

# Check library
unless have_library('tbb')
  abort 'Please install TBB library!'
end

create_makefile('tbb_ruby/tbb_ruby')
