require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i ** 2
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    @new_string = params[:phrase]
    "#{@new_string}" * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ") + "."
    "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
      when "add"
        "#{@number1 + @number2}"
      when "subtract"
        "#{@number1 - @number2}"
      when "multiply"
        "#{@number1 * @number2}"
      when "divide"
        "#{@number1 / @number2}"

    end
  end

end
