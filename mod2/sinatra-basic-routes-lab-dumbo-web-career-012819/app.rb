require_relative 'config/environment'

class App < Sinatra::Base

  get('/') {"Hello World!"}

  get('/name') {"My name is Tracy"}

  get('/hometown') {"My hometown is Taipei"}

  get('/favorite-song') {"My favorite song is bleh"}


  # get '/name' do
  #   "My name is Tracy"
  # end

  # get '/hometown' do
  #   "My hometown is Taipei"
  # end
  # 
  # get '/favorite-song' do
  #   "My favorite song is bleh"
  # end

end
