# Compile code with Rice!
require 'rubygems'
require 'mkmf-rice'
require 'byebug'

# Requires std-c11
$CFLAGS << ' --std=c++11'
$LIBS << ' -ltbb'

# Process arguments
dir_config('tbb')

# TODO: Fix on darwin
# Check library
#unless have_library('tbb')
#  abort 'Please install TBB library!'
#end

if enable_config('debug')
  puts '[INFO] enabling debug library build configuration.'
  if RUBY_VERSION < '1.9'
    $CFLAGS = CONFIG['CFLAGS'].gsub(/\s\-O\d?\s/, ' -O0 ')
    $CFLAGS.gsub!(/\s?\-g\w*\s/, ' -ggdb3 ')
    CONFIG['LDSHARED'] = CONFIG['LDSHARED'].gsub(/\s\-s(\s|\z)/, ' ')
  else
    CONFIG['debugflags'] << ' -ggdb3 -O0'
  end
end

create_makefile('tbb_ruby/tbb_ruby')
