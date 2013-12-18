require 'bundler'
Bundler.require


class Birthday < Sinatra::Application
  
  get '/[:birthday]' do
    

    
    erb :index
  end

end

