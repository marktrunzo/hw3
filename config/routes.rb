Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resource "places"
  resource "posts"
  # Defines the root path route ("/")
  get("/", { :controller => "posts", :action => "index" })
end
