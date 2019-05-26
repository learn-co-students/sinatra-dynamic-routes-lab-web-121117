
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name_input = params[:name]
    "#{name_input.reverse}"
  end

  get '/square/:number' do
    # binding.pry
    number_input = params[:number].to_i
    (number_input**2).to_s
  end

  get '/say/:number/:phrase' do
    @number_input = params[:number].to_i
    @phrase_input = params[:phrase]
    @output = ''
    @number_input.times do |i|
      @output += "#{@phrase_input}"
    end
    @output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1_input = params[:word1]
    word2_input = params[:word2]
    word3_input = params[:word3]
    word4_input = params[:word4]
    word5_input = params[:word5]
    "#{word1_input} #{word2_input} #{word3_input} #{word4_input} #{word5_input}."
  end

 get '/:operation/:number1/:number2' do
   @operation_input = params[:operation].to_s
   @number1_input = params[:number1].to_i
   @number2_input = params[:number2].to_i

   if @operation_input == "add"
     "#{@number1_input + @number2_input}"
   elsif @operation_input == "subtract"
     "#{@number1_input - @number2_input}"
   elsif @operation_input == "multiply"
     "#{@number1_input * @number2_input}"
   else "#{@number1_input / @number2_input}"
   end
 end


end
