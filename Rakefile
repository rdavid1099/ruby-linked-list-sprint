require 'rake'

namespace :test do
  desc 'Run all tests in test suite'
  task :all do
    Dir.glob('./test/*_test.rb').each { |file| require file}
  end
end
