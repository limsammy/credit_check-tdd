require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_check'

class CardCheckTest < Minitest::Test
  def test_card_check_object_initalizes_type_as_nil
    check = CardCheck.new

    assert_nil check.type
  end
end