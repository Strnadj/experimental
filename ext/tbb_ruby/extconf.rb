# Compile code with Rice!
require 'rubygems'
require 'mkmf-rice'
require 'byebug'

# Requires std-c11
$CFLAGS << ' --std=c++11'

# Process arguments
# dir_config('tbb')


LIB_DIRS = ["/usr/local/Cellar/tbb/4.4-20150728/lib/"]
HEADER_DIRS    = ["/usr/local/Cellar/tbb/4.4-20150728/include/"]

dir_config('.', HEADER_DIRS, LIB_DIRS)

# Check library
# unless have_library('tbb')
#  abort 'Please install TBB library!'
# end

create_makefile('tbb_ruby/tbb_ruby')
