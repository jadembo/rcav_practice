class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:number].to_i
    @output = @number ** 2

    render ("square.html.erb")
  end


  def squareroot
    @number = params[:number].to_i
    @output = @number ** 0.5

    render("squareroot.html.erb")
  end

  def rand_number
    @number1 = [params[:number1].to_i, params[:number2].to_i].min
    @number2 = [params[:number1].to_i, params[:number2].to_i].max

    @output = rand(@number2)+@number1

    render("rand.html.erb")
  end

  def payment
    @apr = params[:basispoint].to_f / 100
    @years = params[:years].to_i
    @principal = params[:principal].to_i

    monthly_interest_rate = @apr /100/12
    number_of_payments = @years * 12

    numerator = (monthly_interest_rate * @principal) * (1 + monthly_interest_rate)**number_of_payments
    denominator = (1+monthly_interest_rate)**number_of_payments - 1

    @monthly_payment = numerator / denominator

    render("payment.html.erb")
  end


end
