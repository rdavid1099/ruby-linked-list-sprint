require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
Dir.glob('./lib/*.rb').each { |file| require file}

class TestHelper < Minitest::Test
  def setup
  end
end
