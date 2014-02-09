require 'bundler'
require 'sinatra'
Bundler.require
require '.lib/birthday.rb'

class Birthday < Sinatra::Application
  
  get '/' do
    
    erb :index
  end

end

