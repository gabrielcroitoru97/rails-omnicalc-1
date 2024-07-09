Rails.application.routes.draw do
  get("/",{:controller=> "omni", :action=>"home"})


  get("/square/new",{:controller=> "omni", :action=>"square"})
  get("/square_root/new",{:controller=> "omni", :action=>"square_root"})
  get("/payment/new",{:controller=> "omni", :action=>"payment"})
  get("/random/new",{:controller=> "omni", :action=>"random"})

  get("/square/results",{:controller=> "omni", :action=>"square_results"})
  get("/square_root/results",{:controller=> "omni", :action=>"square_root_results"})
  get("/payment/results",{:controller=> "omni", :action=>"payment_results"})
  get("/random/results",{:controller=> "omni", :action=>"random_results"})


end
