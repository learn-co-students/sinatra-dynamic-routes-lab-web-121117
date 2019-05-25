require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    reversed = @name.reverse
    reversed
  end

  get '/square/:number' do
    @number = params[:number].to_i
    square = @number * @number
    square.to_s
  end

  get '/say/:number/:phrase' do
    # binding.pry
    @number = params[:number].to_i
    @phrase = params[:phrase] + " "
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @string = @word1 + " " + @word2 + " " +@word3 + " " + @word4 + " " + @word5 + "."
    "#{@string}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      # binding.pry
      sum = @num1 + @num2
      "#{sum}"
    elsif @operation == "subtract"
      result = @num1 - @num2
      "#{result}"
    elsif @operation == "multiply"
      product = @num1 * @num2
      "#{product}"
    elsif @operation == "divide"
      result = @num1 / @num2
      "#{result}"
    end
  end
end