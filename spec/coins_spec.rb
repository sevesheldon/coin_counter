require('rspec')
require('coins')
require('pry')

describe('Float#coins') do

  it("returns a HASH") do
    expect(0.0.coins()).to(eq(
        coin_purse = { "Quarters" => 0,
                       "Dimes" => 0,
                       "Nickels" => 0,
                       "Pennies" => 0,
                     }))
  end

  it("returns the correct amount of quarters") do
    expect(0.50.coins()).to(eq(
        coin_purse = { "Quarters" => 2,
                       "Dimes" => 0,
                       "Nickels" => 0,
                       "Pennies" => 0,
                     }))
  end

  it("returns the correct amount of dimes") do
    expect(0.20.coins()).to(eq(
        coin_purse = { "Quarters" => 0,
                       "Dimes" => 2,
                       "Nickels" => 0,
                       "Pennies" => 0,
                     }))
  end

  it("returns the correct amount of nickels") do
    expect(0.05.coins()).to(eq(
        coin_purse = { "Quarters" => 0,
                       "Dimes" => 0,
                       "Nickels" => 1,
                       "Pennies" => 0,
                     }))
  end

  it("returns the correct amount of pennies") do
    expect(0.04.coins()).to(eq(
        coin_purse = { "Quarters" => 0,
                       "Dimes" => 0,
                       "Nickels" => 0,
                       "Pennies" => 4,
                     }))
  end

  it("returns the correct amount of quarters, dimes, nickel and pennies") do
    expect(0.81.coins()).to(eq(
        coin_purse = { "Quarters" => 3,
                       "Dimes" => 0,
                       "Nickels" => 1,
                       "Pennies" => 1,
                     }))
  end

end
