Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :create, :new]
  end
  resources :doses, only: [ :destroy]
end

# rails generate model Cocktails name:string
# rails generate model Ingredients name:string
# rails generate model Doses description:string cocktails:references ingredients:references
# rails db:migrate
