Rails.application.routes.draw do
  root 'products#index' # Adjust this to your actual root controller and action

  get 'about_us', to: 'products#about_us', as: 'about_us'
  get 'contact', to: 'products#contact', as: 'contact'
  resources :products, only: [:index, :new, :create, :show,:edit, :update, :destroy]
  resources :products do
    collection do
      get 'search'
    end
  end

end