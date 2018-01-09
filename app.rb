require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i #converts string to integer
    total = @number * @number
    "#{total}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i #converts string to integer
    @phrase = params[:phrase]
    print_phrase = @phrase * @number
      "#{print_phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
     word1_input = params[:word1]
     word2_input = params[:word2]
     word3_input = params[:word3]
     word4_input = params[:word4]
     word5_input = params[:word5]
   "#{word1_input} #{word2_input} #{word3_input} #{word4_input} #{word5_input}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation].to_s
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

      if @operation == "add"
        "#{@number1 + @number2}"
        elsif @operation == "subtract"
            "#{@number1 - @number2}"
        elsif @operation == "multiply"
          "#{@number1 * @number2}"
        else @operation == "divide"
          "#{@number1 / @number2}"
      end
   end

end
