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
    render(:template=>"omni_templates/square_root_results")
  end
  def payment_results
    render(:template=>"omni_templates/payment_results")
  end
  def random_results
    render(:template=>"omni_templates/random_results")
  end
end
