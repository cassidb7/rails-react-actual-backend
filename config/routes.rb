Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace 'api' do
    namespace 'v1' do
      resources :posts
      resources :categories do
        get :all_products, on: :member
      end
      resources :products do
        get :related, on: :member
      end
    end
  end
end
