require('rspec')
require('rps')
require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')

get('/rps') do
  erb(:rps)
end

get('/output') do
  @out = params.fetch('').method()
  erb(:output)
end
