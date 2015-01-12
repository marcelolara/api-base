require 'sinatra/base'
require 'json'

class ApplicationController < Sinatra::Base

  set :root, File.expand_path('../../', __FILE__)

end