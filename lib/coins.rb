class Float
  define_method(:coins) do
    coin_purse = { "Quarters" => 0,
                   "Dimes" => 0,
                   "Nickels" => 0,
                   "Pennies" => 0,
                   "Total" => self
                 }
    remainder = self.*(100).to_i

    until remainder < 25
      coin_purse["Quarters"] += 1
      remainder -= 25
    end

    until remainder < 10
      coin_purse["Dimes"] += 1
      remainder -= 10
    end

    until remainder < 05
      coin_purse["Nickels"] += 1
      remainder -= 5
    end

    until remainder < 1
      coin_purse["Pennies"] += 1
      remainder -= 1
    end

    coin_purse

  end
end
