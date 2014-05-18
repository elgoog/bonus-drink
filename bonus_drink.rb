class BonusDrink
  def self.total_count_for(amount)
    my_bottle = amount
    empty_bottle = 0
    while my_bottle != 0
      my_bottle -= 1
      empty_bottle += 1
      my_bottle += 1 if empty_bottle % 3 == 0
    end
    empty_bottle
  end
end

if $PROGRAM_NAME == __FILE__
  puts BonusDrink.total_count_for(100)
end
