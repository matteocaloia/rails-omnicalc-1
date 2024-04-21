Rails.application.routes.draw do
  get("/", { :controller => "calc", :action => "rules" })

  get("/square/new", { :controller => "calc", :action => "new_square" })

  get("/square/square/results", { :controller => "calc", :action => "new_square_results" })

  get("/square_root/new", { :controller => "calc", :action => "new_root" })

  get("/square_root/square_root/square_root/results", { :controller => "calc", :action => "new_root_results" })

  get("/payment/new", { :controller => "calc", :action => "new_payment" })

  get("/payment/payment/results", { :controller => "calc", :action => "new_payment_results" })

  get("/random/new", { :controller => "calc", :action => "new_random" })

  get("/random/random/random/results", { :controller => "calc", :action => "new_random_results" })
end

