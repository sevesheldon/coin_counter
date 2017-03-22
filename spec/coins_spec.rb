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

end
