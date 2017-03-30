require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
Dir.glob('./test/*_test.rb').each { |file| require file}

class TestHelper < Minitest::Test
  def setup
  end
end
