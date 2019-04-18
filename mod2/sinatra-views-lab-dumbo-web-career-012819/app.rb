class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get('/hello') {erb :hello}

	get('/goodbye') {erb :goodbye}

	get('/date') {erb :date}


end
