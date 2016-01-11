require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangle') do
  s1 = params.fetch('s1')
  s2 = params.fetch('s2')
  s3 = params.fetch('s3')
  @triangle = Triangle.new(s1, s2, s3)
  erb(:triangle)
end
