require('sinatra')
require('sinatra/reloader')
require('./lib/coins')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:form)
end

get('/result') do
  @coin_purse = params.fetch('coin_total').to_f.coins()
  erb(:result)
end
