require 'sinatra/base'

Dir.glob('./app/{controllers}/*.rb').each { |file| require file }

map('/') { run ApiController }