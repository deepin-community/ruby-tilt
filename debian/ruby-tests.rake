require 'gem2deb/rake/testtask'

exclude = %w[
  test/tilt_coffeescripttemplate_test.rb
  test/tilt_sasstemplate_test.rb
]

Gem2Deb::Rake::TestTask.new do |t|
  t.libs << 'lib' << 'test'
  t.test_files = FileList['test/*_test.rb'] - exclude
end

