require_relative 'application_controller'

class ApiController < ApplicationController
  before do
    content_type :json
  end

  get '/' do
    { hello: 'world' }.to_json
  end

end