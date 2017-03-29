class CardCheck
  attr_reader :card_type, :card_number

  def initialize(card_number=nil)
    @card_type = 'Default'
    @card_number = card_number
  end

  def check_card_type(card_number=@card_number)
    @card_type = 'American Express' if card_number.to_s[0..2] == '342'
  end
end