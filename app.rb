require_relative 'config/environment'

# 1. Create a dynamic route at `get '/reversename/:name'` that accepts a name and renders the name backwards.
#
# 2. Create a dynamic route at `get '/square/:number'` that accepts a number and returns the square of that number. **Note:** Remember that values in params always come in as strings, and your return value for the route should also be a string (use `.to_i` and `.to_s`).
#
# 3. Create a dynamic route at `get '/say/:number/:phrase'` that accepts a number and a phrase and returns that phrase in a string the number of times given.
#
# 4. Create a dynamic route at `get '/say/:word1/:word2/:word3/:word4/:word5'` that accepts five words and returns a string with them formatted as a sentence.
#
# 5. Create a dynamic route at `get '/:operation/:number1/:number2'` that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to `/add/1/2` should render `3`.
class App < Sinatra::Base

  get "/" do
    "Hello, world!"
  end
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end
  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number * @number}"
  end
  get "/say/:number/:phrase" do

    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"


  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    elsif @operation == "divide"
      "#{@number1 / @number2}"
    end
  end

end
