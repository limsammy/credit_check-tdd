require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_check'

class CardCheckTest < Minitest::Test
  def test_card_check_object_initalizes_type_as_default
    card = CardCheck.new

    assert_equal 'Default', card.card_type
  end

  def test_number_initializes_as_nil
    card = CardCheck.new

    assert_nil card.card_number
  end

  def test_card_check_type_assigns_type_to_AmEx
    card = CardCheck.new('342804633855673')

    assert_equal 'American Express', card.check_card_type
  end

  def test_sum_method_returns_fixnunm
    card = CardCheck.new('4929735477250543')

    assert_instance_of Fixnum, card.sum
  end

  def test_validation_on_valid_card
    card = CardCheck.new('4929735477250543')

    assert card.valid?
  end

  def test_validation_on_invalid_card
    card = CardCheck.new('5541801923795240')

    refute card.valid?
  end

  def test_auto_type_on_initialize
    card = CardCheck.new('342804633855673')

    assert_equal 'American Express', card.card_type
  end
end