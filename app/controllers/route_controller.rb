require_relative 'application_controller'

class RouteController < ApplicationController

  get '/' do
    { hola: 'sinatra' }.to_json
  end

end
