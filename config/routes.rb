Rails.application.routes.draw do
  root 'products#index' 

  get 'about_us', to: 'products#about_us', as: 'about_us'
  get 'contact', to: 'products#contact', as: 'contact'
  
  resources :products do
    collection do
      get 'search'
    end
  end

end