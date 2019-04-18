class Application < Sinatra::Base
  get('/') {erb :index}

  post('/greet') {erb :greet}

end
