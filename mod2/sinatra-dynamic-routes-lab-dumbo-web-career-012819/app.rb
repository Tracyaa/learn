require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @square = (params[:number].to_i ** 2).to_s
    @square
  end

  get '/say/:number/:phrase' do
    @nums_phrases = ""
    (params[:number].to_i).times do
      # @nums_phrases += params[:phrase]
      @nums_phrases << params[:phrase] # run less memory
    end
    @nums_phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @five_words = ""
    params.each do |k, v|
      @five_words << "#{v} "
    end
    @five_words.strip + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    math_hash = {"add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/"}
    @num1.send(math_hash[params[:operation]], @num2).to_s
  end



end
