class Float
  define_method(:coins) do
    coin_purse = { "Quarters" => 0,
                   "Dimes" => 0,
                   "Nickels" => 0,
                   "Pennies" => 0,
                 }
    remainder = self

    until remainder < 0.25
      coin_purse["Quarters"] += 1
      remainder -= 0.25
    end

    coin_purse

  end
end
