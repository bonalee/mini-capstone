Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/products" => "products#donut_index"
  get "/products/new" => "products#new_donut"
  post "/products/" => "products#donut_creation"
  get "/products/:id" => "products#donut_show"
  get "/products/id/edit" => "products#modify_donut"
  patch "/products/:id" => "products#update_donut"
  delete "/products/:id" => "products#destroy_donut"
end
