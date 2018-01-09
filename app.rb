require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @squared_number = params[:number].to_i * params[:number].to_i
    "#{@squared_number}"
  end

  get "/say/:number/:phrase" do
    empty_string = ''
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      empty_string += @phrase
    end
    empty_string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    answer = ''

    if @operation == 'add'
      answer += (@number1 + @number2).to_s
    elsif @operation == 'subtract'
      answer += (@number1 - @number2).to_s
    elsif @operation == 'multiply'
      answer += (@number1 * @number2).to_s
    elsif @operation == 'divide'
      answer += (@number1 / @number2).to_s
    else
      answer += "No Answer"
    end
  end

end
