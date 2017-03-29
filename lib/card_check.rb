class CardCheck
  attr_reader :card_type, :card_number

  def initialize(card_number=nil)
    @card_type = 'Default'
    @card_number = card_number
  end

  def check_card_type(card_number=@card_number)
    @card_type = 'American Express' if card_number.to_s[0..2] == '342'
  end

  def format_card(card_number=@card_number)
    card_number = *(card_number.split('').map { |num| num.to_i })
    card_number = card_number.reverse
    card_number.map!.with_index { |num, index| index.even? ? num : num * 2 }
  end

  def sum(card_number=@card_number)
    final = Array.new
    formatted_num = format_card(card_number)

    formatted_num.each do |num|
      if num > 9
        first,second = num.to_s.split('').map { |i| i.to_i }
        final.push(first + second)
      else
        final.push(num)
      end
    end

    final.inject(:+)
  end
end