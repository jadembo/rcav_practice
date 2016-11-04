Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square/:number", { :controller => "calculations", :action => "square" })

  get("/square_root/:number", { :controller => "calculations", :action => "squareroot" })

  get("/random/:number1/:number2", { :controller => "calculations", :action => "rand_number" })

  get("/payment/:basispoint/:years/:principal", { :controller => "calculations", :action => "payment" })

end
