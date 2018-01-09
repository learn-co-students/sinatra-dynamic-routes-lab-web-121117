require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @output = []
    @number.times do
      @output << @phrase
    end
    @output.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = []
    params.map {|k,v| @words << v}
    @words.join(" ")
    "#{@words.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @number_one = params[:number1].to_i
    @number_two = params[:number2].to_i
    @operation = params[:operation].downcase
    case @operation
    when 'add'
      @answer = @number_one + @number_two
    when 'subtract'
      @answer = @number_one - @number_two
    when 'multiply'
      @answer = @number_one * @number_two
    when 'divide'
      @answer = @number_one / @number_two
    end
    @answer.to_s
  end

end
