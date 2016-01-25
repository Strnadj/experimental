# -*- ruby -*-

require 'rubygems'
require 'hoe'
require 'rake/extensiontask'

Hoe.plugin :bundler, :rubygems #, :doofus, :git

Hoe.spec 'tbb_ruby' do
  developer('Ing. Jan Strnadek', 'jan.strnadek@gmail.com')

  self.version = '0.0.1'
  self.readme_file = 'README.rdoc'
  self.history_file = 'History.txt'
  self.extra_deps << [ 'rice', '~> 2.1.0' ]
  self.extra_dev_deps << [ 'rake-compiler', '>= 0' ]
  self.extra_dev_deps << [ 'minitest', '>= 0' ]

  self.spec_extras = { extensions: ['ext/tbb_ruby/extconf.rb'] }

  license 'MIT'

  Rake::ExtensionTask.new('tbb_ruby', spec) do |ext|
    ext.lib_dir = File.join('lib', 'tbb_ruby')
  end
end

Rake::Task[:test].prerequisites << :compile
