require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    array = []

    var = @num.times do
      array << "#{@phrase}"
    end

    array.join(" ")

  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    array = []
    i = 1

    params.each do
      key = "word" + "#{i}"
      array << params[key]
      i += 1
    end

    "#{array.join(" ")}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation].to_s
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
    else
      nil
    end

  end



end