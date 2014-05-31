class BonusDrink
  REQUIRED_COUND_FOR_BONUS = 3
  def self.total_count_for(amount)
    my_bottle = amount
    bottles_in_shop = 0
    while my_bottle != 0
      my_bottle -= 1
      bottles_in_shop += 1
      my_bottle += 1 if bottles_in_shop % REQUIRED_COUND_FOR_BONUS == 0
    end
    bottles_in_shop
  end
end

if $PROGRAM_NAME == __FILE__
  puts BonusDrink.total_count_for(100)
end
