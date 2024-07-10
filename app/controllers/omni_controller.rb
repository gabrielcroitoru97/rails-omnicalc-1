class OmniController < ApplicationController
  def home
    render(:template=>"omni_templates/home")
  end
  def square
    render(:template=>"omni_templates/square")
  end
  def square_root
    render(:template=>"omni_templates/square_root")
  end
  def payment
    render(:template=>"omni_templates/payment")
  end
  def random
    render(:template=>"omni_templates/random")
  end

  def square_results
    @sq_num=params.fetch("sq_num").to_d
    render(:template=>"omni_templates/square_results")
  end
  def square_root_results
    @sqrtnum=params.fetch("sqrtnum").to_d
    @rooted=@sqrtnum**0.5
    render(:template=>"omni_templates/square_root_results")
  end
  def payment_results
    @apr=params.fetch("apr").to_f
    @apr_per=@apr.to_fs(:percentage, { :precision => 4 } ) 
    @num_years=params.fetch("num_years").to_i
    prin=params.fetch("principal").to_d
    @principal=prin.to_fs(:currency) 
    per = @apr*0.01/12
    months=@num_years*12
    pay=(per*prin)/(1-((1+per)**(months*-1)))
    @payment=pay.to_fs(:currency) #"$"+number_with_delimiter(pay.round(2), :delimiter => ',').to_s
    render(:template=>"omni_templates/payment_results")
  end

  def random_results
    @min=params.fetch("min").to_d
    @max=params.fetch("max").to_d
    @rand=rand(@min..@max)
    render(:template=>"omni_templates/random_results")
  end
end
