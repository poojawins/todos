require 'bundler'
require 'sinatra'
Bundler.require

class Birthday < Sinatra::Application
  
  get '/' do
    birthday = Time.new(1990, 11, 13).strftime("%m %-d")
    @now = Time.new.strftime("%m %-d")
    birthday == @now ? @answer = "Yes" : @answer = "No"
    erb :index
  end

end

