require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    reversename = @name.reverse
    "#{reversename}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    square = @num * @num
    "#{square}"
  end

  get '/say/:number/:phrase' do
    string = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      string += @phrase
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    end
  end
end


# Create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.
#
# Create a dynamic route at get '/square/:number' that accepts a number and returns the square of that number. Note: Remember that values in params always come in as strings, and your return value for the route should also be a string (use .to_i and .to_s).
#
# Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a string the number of times given.
#
# Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string with them formatted as a sentence.
#
# Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
