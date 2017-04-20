require('rspec')
require('./lib/rps')
require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

get('/battle') do
  @out1 = params.fetch('play1')
  @out2 = params.fetch('play2')
  @result = "".beats(@out1,@out2)
  erb(:result_page)
end
