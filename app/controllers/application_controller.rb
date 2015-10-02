class ApplicationController < Sinatra::Base

  set :root, File.expand_path('../../', __FILE__)

  set :DATABASE_URL, ENV.fetch('DATABASE_URL')
  set :APPLICATION_ID, ENV.fetch('APPLICATION_ID')
  set :API_KEY, ENV.fetch('API_KEY')

  DB = Sequel.connect(settings.DATABASE_URL)

  before do
    content_type :json
    headers 'Content-Type' => 'text/html; charset=utf-8'

    if env['HTTP_APPLICATION_ID'] != settings.APPLICATION_ID ||
       env['HTTP_API_KEY'] != settings.API_KEY
        data = { message: 'Hasta la vista' }
        halt 401, data.to_json
    end
  end

  # helpers AuthenticationHelpers
end
