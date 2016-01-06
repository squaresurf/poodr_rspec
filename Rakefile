require 'coveralls/rake/task'
require 'rake/testtask'
require 'rspec/core/rake_task'

Coveralls::RakeTask.new

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

RSpec::Core::RakeTask.new(:spec)

task default: [:test, :spec, 'coveralls:push']
