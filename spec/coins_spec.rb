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

end
