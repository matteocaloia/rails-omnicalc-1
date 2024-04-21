class CalcController < ApplicationController

  def new_square
    render({ :template => "my_templates/new_square" }) 
  end

  def new_square_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({ :template => "my_templates/new_square_results" })
  end

  def new_root
    render({ :template => "my_templates/new_root" }) 
  end

  def new_root_results
    @num = params.fetch("users_number").to_f
    @result = @num ** 0.5
    render({ :template => "my_templates/new_root_results" })
  end

  def new_payment
    render({ :template => "my_templates/new_payment" }) 
  end

  def new_payment_results
    @apr = (params.fetch("users_apr").to_f/100)
    @years = params.fetch("users_years").to_f
    @principal = params.fetch("users_principal").to_f
    @apr_as_percent = (@apr*100).to_fs(:percentage)
    @principal_as_curr = @principal.to_fs(:currency)
    @rate = @apr/12

    @months = @years*12

    @payment = (@rate * @principal) / (1 - ((1 + @rate)**(-@months)))
    @payment_as_curr = @payment.to_fs(:currency)
    render({ :template => "my_templates/new_payment_results" })
  end

  def new_random
    render({ :template => "my_templates/new_random" }) 
  end

  def new_random_results
    @minimum = params.fetch("users_minimum").to_f
    @maximum = params.fetch("users_maximum").to_f
    @random = rand(@minimum..@maximum)
    render({ :template => "my_templates/new_random_results" })
  end

  def rules
    render({ :template => "my_templates/rules" })
  end
end

