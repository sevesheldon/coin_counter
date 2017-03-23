require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin breakdown path', {:type => :feature}) do
  it('processes the float amount and returns it broken down by the coin') do
    visit('/')
    fill_in('coin_total', :with => 0.83)
    click_button('Go')
    expect(page).to have_content('3 Quarters 1 Nickel 3 Pennies')
  end
end
