Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resource "places"
  # Defines the root path route ("/")
  get("/", { :controller => "application_controller", :action => "index" })
end
