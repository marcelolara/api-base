require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

Dir.glob('./app/{helpers,controllers}/*.rb').each { |file| require file }

map('/') { run RouteController }
